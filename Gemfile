source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'rails', '~> 6.1.6', '>= 6.1.6.1'
gem 'mysql2'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'net-smtp'
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'kaminari'
gem 'chartkick'
gem "groupdate"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-rails'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

group :test do
  gem 'selenium-webdriver', '>= 4.0.0.rc1'
  gem 'webdrivers'
  gem 'capybara', '>= 3.26'
  gem 'rspec-rails'
  gem "factory_bot_rails"
  gem 'faker'
end
