source 'http://rubygems.org'

gem 'rails'

gem 'sqlite3'

gem 'haml'
gem 'bootstrap-sass'

gem 'jquery-rails'

gem 'jqcloud-rails'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development do
  gem 'pry'
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
  platform :mri_18 do
    gem 'ruby-debug'
  end
  platform :mri_19 do
    gem 'ruby-debug19'
  end
end
