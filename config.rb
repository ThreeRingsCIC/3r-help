# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

helpers do
  # Breadcrumbs from the top of this page's help tree (e.g. source/live/index.html.md, labelled "Help")
  # down to the current page, using relative links. Each intermediate level's title comes from the
  # index page in that directory; levels without one are skipped. Returns nothing on the top page.
  def breadcrumbs
    dirs = current_page.path.split('/')[0...-1] # e.g. "live/admin/roles/index.html" => ["live", "admin", "roles"]
    return '' if dirs.size < 2

    crumbs = (1...dirs.size).filter_map do |depth|
      ancestor = sitemap.find_resource_by_path("#{dirs[0, depth].join('/')}/index.html")
      next unless ancestor

      label = depth == 1 ? 'Help' : (ancestor.data.title || dirs[depth - 1])
      %(<li><a href="#{'../' * (dirs.size - depth)}">#{ERB::Util.html_escape(label)}</a></li>)
    end
    crumbs << "<li>#{ERB::Util.html_escape(current_page.data.title)}</li>"

    %(<ol class="breadcrumb no_print">\n  #{crumbs.join("\n  ")}\n</ol>)
  end
end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript, compressor: Terser.new
# end

# The site may be served from a subdirectory (e.g. https://<org>.github.io/3r-help/),
# so make links to assets and other pages relative rather than root-relative:
activate :relative_assets
set :relative_links, true
