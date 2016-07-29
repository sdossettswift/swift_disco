source 'https://rubygems.org'
ruby '2.3.1'
gem 'rails', '~> 5.0.0'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
 gem 'bcrypt', '~> 3.1.7'
 gem 'bootstrap-sass'
 gem 'bootstrap-material-design', '~> 0.2.2'
 gem 'minitest-rails'
 gem 'simple_form'

 gem 'doorkeeper'

gem 'refile', github: "refile/refile", require: 'refile/rails'
gem 'refile-mini_magick'
gem 'refile-postgres', '~> 1.4'
gem "sinatra", github: "sinatra/sinatra", branch: "master"
gem "rack-protection", github: "sinatra/rack-protection"

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'minitest-rails-capybara'
end

group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
