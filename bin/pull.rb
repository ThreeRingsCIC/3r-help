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

# Tidy up WordPress-isms that ReverseMarkdown doesn't handle well:
def clean_html(html)
  html = html
    .gsub(/&nbsp;| /, ' ')                 # non-breaking spaces would otherwise survive as literal &nbsp;
    .gsub(%r{<(/?)tt\b[^>]*>}i, '<\1code>')     # <tt> (used for UI labels) isn't supported; treat as <code>

  # Headings are often wrapped in <strong>/<b>, giving "### **Heading**"; unwrap them:
  doc = Nokogiri::HTML::DocumentFragment.parse(html)
  doc.css('h1, h2, h3, h4, h5, h6').each do |heading|
    heading.css('strong, b').each { |bold| bold.replace(bold.children) }
  end
  doc.to_html
end

# Pull https://www.3r.org.uk/_help-export, parse as JSON:
response = Net::HTTP.get_response(EXPORT_URL)
abort "Failed to fetch #{EXPORT_URL}: #{response.code} #{response.message}" unless response.is_a?(Net::HTTPSuccess)
pages = JSON.parse(response.body)

# Write each page to source/${site}/${path}/index.html.md, for each site:
pages.each do |page|
  if page['path'].nil?
    warn "Skipping #{page['name'].inspect}: no path"
    next
  end

  # Some paths are full URLs (e.g. "https://www.3r.org.uk/admin/shifts/new"); keep only the path part:
  path = page['path'].sub(%r{\Ahttps?://[^/]+}, '').delete_prefix('/').delete_suffix('/')

  frontmatter = { 'name' => page['name'], 'title' => page['title'] }.to_yaml
  markdown = ReverseMarkdown.convert(clean_html(page['content'].to_s), unknown_tags: :bypass, github_flavored: true).strip

  SITES.each do |site|
    site_dir = File.join(SOURCE_DIR, site)
    dir = File.expand_path(path, site_dir)
    abort "Refusing to write outside source/#{site}/: #{page['path'].inspect}" unless "#{dir}/".start_with?("#{site_dir}/")
    FileUtils.mkdir_p(dir)

    File.write(File.join(dir, 'index.html.md'), "#{frontmatter}---\n\n#{markdown}\n")
    puts "Wrote #{File.join(site, path, 'index.html.md')}"
  end
end
