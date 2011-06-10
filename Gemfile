source 'http://rubygems.org'

gem 'rails', '3.0.8'

gem 'mysql2', '~> 0.2.6'

gem 'ruby-debug'

gem 'sass'
gem 'haml'
gem 'jquery-rails'

group :development do
  gem 'mongrel'
  gem "annotate"
end

group :test do
  gem "capybara"
  gem "launchy"
  gem "cucumber"
  gem "cucumber-rails"
  gem "database_cleaner"
  gem "guard-cucumber"
  if RUBY_PLATFORM =~ /darwin/
    gem "rb-fsevent" 
  elsif RUBY_PLATFORM =~ /linux/
    gem "rb-inotify"
    gem "libnotify"
  end
end

group :development, :test do
  gem "rspec-rails"
  gem "factory_girl_rails"
end
