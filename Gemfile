source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.1'

gem 'sqlite3'

gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug', platform: :mri

  gem 'rspec-rails', '~> 3.1.0'

  gem 'factory_girl_rails'

  gem 'shoulda-matchers'

  gem 'web-console', '>= 3.3.0'

  gem 'listen', '~> 3.0.5'

  gem 'spring'

  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
end

group :test do
  gem 'capybara'

  gem 'database_cleaner'

  gem 'email_spec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
