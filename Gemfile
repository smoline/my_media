ruby '2.4.0'
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

gem 'turbolinks', '~> 5.0.0'

gem 'social-share-button', '~> 0.10.0'

# Automatically inline mail CSS styles
gem 'premailer-rails', '~> 1.9', '>= 1.9.6'
gem 'nokogiri'

gem 'sendgrid-ruby'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Pagination
gem 'kaminari', :git => "git://github.com/amatsuda/kaminari.git", :branch => 'master'
gem 'underscore-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'httparty', '~> 0.15.2'
gem 'json', '~> 2.1'

# Image uploading support
gem 'shrine', '~> 2.6', '>= 2.6.1'
gem 'shrine-sql', '~> 1.1', '>= 1.1.2'
gem 'roda', '~> 2.26'
gem 'image_processing', '~> 0.4.1'
gem 'mini_magick', '~> 4.3.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
gem 'resque', '~> 1.25', '>= 1.25.2'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Authentication via Omniauth
gem 'omniauth', '~> 1.6', '>= 1.6.1'
gem 'omniauth-github', '~> 1.2', '>= 1.2.3'
gem 'omniauth-facebook', '~> 4.0'
gem 'omniauth-twitter', '~> 1.4'
gem 'omniauth-linkedin', '~> 0.2.0'
gem 'omniauth-google-oauth2', '~> 0.4.1'

# Authentication via Devise
gem 'devise', '~> 4.3'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'pry-byebug'
end

group :test do
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'bootstrap-generators', git: 'https://github.com/gstark/bootstrap-generators', branch: 'includes-simplified-controller-scaffold'
gem 'bootstrap-social-rails'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'
group :development do
  gem 'awesome_print'
  gem 'dotenv-rails'
end

gem 'refile', github: 'gstark/refile', branch: 'updates-for-rails-5', require: 'refile/rails'
gem 'refile-postgres'
group :production do
  gem 'rails_12factor'
end
