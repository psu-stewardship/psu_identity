source "https://rubygems.org"

# Specify your gem's dependencies in psu_identity.gemspec
gemspec

gem "rake", "~> 12.0"
gem 'faraday', '~> 0.17.0'
# SimpleCov > 0.17 not compatible with Code Climate
gem 'simplecov', '=0.17'

group :test do
  # Rspec and packages
  gem "rspec", "~> 3.0"
  gem 'rspec-its'
  # Mock external requests
  gem 'vcr'
  gem 'webmock'
end