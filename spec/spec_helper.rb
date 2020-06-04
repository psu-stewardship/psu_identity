require "bundler/setup"
require "psu_identity"
require 'rspec/its'
require 'simplecov'
SimpleCov.start
# JSON format for Code Climate parsing
SimpleCov.at_exit do
  SimpleCov.result.to_json
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
