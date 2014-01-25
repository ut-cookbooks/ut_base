source "https://rubygems.org"

gem 'rake'
gem 'foodcritic'

group :development do
  gem 'chef', '~> 11.8.2'
  gem 'emeril', '~> 0.6.0'
end

group :integration do
  gem 'json', '= 1.7.7' # make berkshelf and chef play nice(r)
  gem 'berkshelf', '~> 3.0.0.beta5'
  gem 'test-kitchen', git: 'https://github.com/test-kitchen/test-kitchen.git'
  gem 'kitchen-vagrant'
  gem 'kitchen-docker'
end
