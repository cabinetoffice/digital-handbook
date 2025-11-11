require 'govuk_tech_docs'

GovukTechDocs.configure(self)

set :layout, 'custom'
set :css_dir, 'stylesheets'
set :images_dir, "images"

configure :build do
  activate :relative_assets
end
