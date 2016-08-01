page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

sprockets.append_path File.join root, 'bower_components'
sprockets.append_path File.join root, 'bower_components/makers_styles/source/javascripts'
sprockets.import_asset 'makers_styles'

configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
end
