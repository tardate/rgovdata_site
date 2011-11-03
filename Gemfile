source 'http://rubygems.org'

gem 'rails', '3.0.10'
# use thin instead of WEBrick
gem 'thin'
# haml: mmmm, less <%%>s
gem 'haml'
# inherited_resources: for controllers with less code
gem 'inherited_resources'
# pg: postgresql in all environments (since probably hosting on heroku)
gem 'pg'
# factory_girl: model factories for testing
gem 'factory_girl_rails'
# compass/sass: DRY css
gem 'compass'
# browser detection
gem 'browser'
# per env constants
gem 'app_constants'

gem 'rgovdata', :path => '../rgovdata'

group :test, :development do
  gem "rspec-rails", "~> 2.4"
end