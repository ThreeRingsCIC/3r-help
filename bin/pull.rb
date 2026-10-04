#!/usr/bin/env ruby
# Bulk import our old help system.

require 'json'
require 'net/http'
require 'yaml'
require 'fileutils'
require 'nokogiri'
require 'reverse_markdown'

EXPORT_URL = URI('https://www.3r.org.uk/_help-export')
SOURCE_DIR = File.expand_path('../source', __dir__)
SITES = %w[main live beta].freeze # each gets its own copy, at source/${site}/
IMAGES_DIR = File.join(SOURCE_DIR, 'images')

# Images hosted by the old help system, which we keep local copies of:
REMOTE_IMAGE = %r{\Ahttps?://(?:www\.)?(?:threerings\.org\.uk/wp-content/uploads|3r\.org\.uk/inline_images)/}i
IMAGE_EXTENSIONS = {
  'image/png' => '.png', 'image/jpeg' => '.jpg', 'image/gif' => '.gif', 'image/webp' => '.webp', 'image/svg+xml' => '.svg'
}.freeze

# GET a URL, following redirects:
def http_get(uri, redirects_left = 5)
  response = Net::HTTP.get_response(uri)
  return response unless response.is_a?(Net::HTTPRedirection) && redirects_left.positive?

  http_get(URI.join(uri, response['location']), redirects_left - 1)
end

# Returns the filename (within IMAGES_DIR) of a local copy of the image at url, downloading it if we don't
# already have it, or nil if it can't be downloaded. Results are memoised so each URL is only tried once:
def local_image(url)
  @local_images ||= {}
  return @local_images[url] if @local_images.key?(url)

  @local_images[url] = begin
    uri = URI(url)
    name = File.basename(URI.decode_www_form_component(uri.path))
    # Some images (e.g. inline_images/<uuid>) have no extension in their URL, so match any extension:
    existing = File.extname(name).empty? ? Dir.glob(File.join(IMAGES_DIR, "#{name}.*")).first : File.join(IMAGES_DIR, name)
    if existing && File.exist?(existing)
      File.basename(existing)
    else
      response = http_get(uri)
      raise "#{response.code} #{response.message}" unless response.is_a?(Net::HTTPSuccess)

      name += IMAGE_EXTENSIONS.fetch(response.content_type.to_s, '') if File.extname(name).empty?
      FileUtils.mkdir_p(IMAGES_DIR)
      File.binwrite(File.join(IMAGES_DIR, name), response.body)
      puts "Downloaded images/#{name}"
      name
    end
  rescue StandardError => e
    warn "WARNING: couldn't download image #{url} (#{e.message}); removing it"
    nil
  end
end

# Replace remotely-hosted images (and links to them, e.g. thumbnails linking to full-size images) with
# local copies, referenced relative to the page (image_prefix is e.g. "../../images/"). Images that can't
# be downloaded are removed, as are links to them:
def localise_images(doc, image_prefix)
  doc.css('img').each do |img|
    next unless img['src'].to_s.match?(REMOTE_IMAGE)

    if (name = local_image(img['src']))
      img['src'] = image_prefix + name
      img.remove_attribute('srcset')
      img.remove_attribute('sizes')
    else
      img.remove
    end
  end

  doc.css('a').each do |link|
    next unless link['href'].to_s.match?(REMOTE_IMAGE)

    if (name = local_image(link['href']))
      link['href'] = image_prefix + name
    elsif link.element_children.empty? && link.text.strip.empty?
      link.remove # it only contained an image which we've removed
    else
      link.replace(link.children)
    end
  end
end

# Old help system URLs (e.g. "/help/admin/roles/", "help/admin", "/docs/stats", or the same on
# https://www.threerings.org.uk/) are rewritten relative to the page (page_depth is the number of
# segments in its path); other site-relative URLs are made absolute to the old site:
OLD_HELP_URL = %r{\A(?:https?://(?:www\.)?threerings\.org\.uk)?/?(?:help|docs)(?:/help)?(?:/|\z)(.*)\z}i

def help_link(url, page_depth, page_path)
  url = url.strip
  if (match = url.match(OLD_HELP_URL))
    target = match[1].delete_suffix('/')
    warn "WARNING: #{page_path.inspect} links to #{url.inspect}, but there's no such page" unless @page_paths.include?(target)
    up = '../' * page_depth
    # Trailing slash, so the target page's own relative links resolve from its directory:
    return target.empty? ? (up.empty? ? './' : up) : "#{up}#{target}/"
  end
  url.start_with?('/') ? "https://www.threerings.org.uk#{url}" : url
end

# Parse a shortcode's attributes, which may be quoted with ", &quot;, or curly quotes:
def shortcode_attributes(attrs)
  attrs.gsub(/&quot;|[“”]/, '"').scan(/(\w+)="([^"]*)"/).to_h
end

# Turn [docs_box url="..." title="..." text="..."] into a list item; title and text may contain HTML:
def docs_box_item(attrs, page_depth, page_path)
  attrs = shortcode_attributes(attrs)
  href = help_link(attrs['url'].to_s, page_depth, page_path)
  title, text = attrs['title'], attrs['text']
  link_text = title || text || attrs['url']
  description = title && text ? " #{text}" : ''
  %(<li><a href="#{href.gsub('"', '&quot;')}">#{link_text}</a>#{description}</li>)
end

DOCS_BOX = %r{\[docs_box\s+(.*?)\s*/?\]}m

# Tidy up WordPress-isms that ReverseMarkdown doesn't handle well:
def clean_html(html, image_prefix:, page_depth:, page_path:)
  html = html
    .gsub(/&nbsp;| /, ' ')                 # non-breaking spaces would otherwise survive as literal &nbsp;
    .gsub(%r{<(/?)tt\b[^>]*>}i, '<\1code>')     # <tt> (used for UI labels) isn't supported; treat as <code>
    .gsub(%r{\[docs_search_form\].*?\[/docs_search_form\]}m, '') # the search form (and its blurb) isn't wanted

  # Shortcodes usually sit within (or span) <p>s, so close and reopen paragraphs around their replacements;
  # the parser tidies up any resulting empty or unbalanced paragraphs.

  # [caption ...]<a><img></a> Caption text[/caption]: keep just the (possibly linked) image, in its own paragraph:
  html = html.gsub(%r{\[caption\b[^\]]*\](.*?)\[/caption\]}m) do
    image = Regexp.last_match(1)[%r{<a\b[^>]*>\s*<img\b[^>]*>\s*</a>|<img\b[^>]*>}m]
    image ? "</p><p>#{image}</p><p>" : ''
  end
  html = html.gsub('[/caption]', '') # orphaned closing tags, whose opening tag was lost

  # [docs_box_row][docs_box ...][docs_box ...][/docs_box_row] becomes a list of links, as does a lone [docs_box]:
  html = html.gsub(%r{\[docs_box_row\](.*?)\[/docs_box_row\]}m) do
    items = Regexp.last_match(1).scan(DOCS_BOX).map { |(attrs)| docs_box_item(attrs, page_depth, page_path) }
    "</p><ul>#{items.join}</ul><p>"
  end
  html = html.gsub(DOCS_BOX) { "</p><ul>#{docs_box_item(Regexp.last_match(1), page_depth, page_path)}</ul><p>" }

  # [alert_box ...]...[/alert_box] is kept as-is for now, but moved into its own paragraph:
  html = html.gsub(%r{\[alert_box\b[^\]]*\].*?\[/alert_box\]}m) { "</p><p>#{Regexp.last_match(0)}</p><p>" }

  doc = Nokogiri::HTML::DocumentFragment.parse(html)

  # Headings are often wrapped in <strong>/<b>, giving "### **Heading**"; unwrap them:
  doc.css('h1, h2, h3, h4, h5, h6').each do |heading|
    heading.css('strong, b').each { |bold| bold.replace(bold.children) }
  end

  localise_images(doc, image_prefix)
  doc.to_html
end

# Pull https://www.3r.org.uk/_help-export, parse as JSON:
response = Net::HTTP.get_response(EXPORT_URL)
abort "Failed to fetch #{EXPORT_URL}: #{response.code} #{response.message}" unless response.is_a?(Net::HTTPSuccess)
pages = JSON.parse(response.body)

# Some paths are full URLs (e.g. "https://www.3r.org.uk/admin/shifts/new"); keep only the path part:
def normalise_path(path)
  path.sub(%r{\Ahttps?://[^/]+}, '').delete_prefix('/').delete_suffix('/')
end
@page_paths = pages.filter_map { |page| page['path'] && normalise_path(page['path']) }

# Write each page to source/${site}/${path}/index.html.md, for each site:
pages.each do |page|
  if page['path'].nil?
    warn "Skipping #{page['name'].inspect}: no path"
    next
  end

  path = normalise_path(page['path'])
  page_depth = path.split('/').size

  # Pages end up at build/${site}/${path}/index.html and images at build/images/, so climb out of both:
  image_prefix = '../' * (page_depth + 1) + 'images/'

  frontmatter = { 'name' => page['name'], 'title' => page['title'] }.to_yaml
  html = clean_html(page['content'].to_s, image_prefix: image_prefix, page_depth: page_depth, page_path: path)
  markdown = ReverseMarkdown.convert(html, unknown_tags: :bypass, github_flavored: true).strip

  SITES.each do |site|
    site_dir = File.join(SOURCE_DIR, site)
    dir = File.expand_path(path, site_dir)
    abort "Refusing to write outside source/#{site}/: #{page['path'].inspect}" unless "#{dir}/".start_with?("#{site_dir}/")
    FileUtils.mkdir_p(dir)

    File.write(File.join(dir, 'index.html.md'), "#{frontmatter}---\n\n#{markdown}\n")
    puts "Wrote #{File.join(site, path, 'index.html.md')}"
  end
end
