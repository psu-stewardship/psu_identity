# frozen_string_literal: true

require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/vcr_cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  c.allow_http_connections_when_no_cassette = true
  c.ignore_localhost = true
  c.filter_sensitive_data('<CLIENT_SECRET>') { ENV.fetch('OAUTH_CLIENT_SECRET') }
  c.filter_sensitive_data('<CLIENT_ID>') { ENV.fetch('OAUTH_CLIENT_ID') }
  c.debug_logger = File.open('log/vcr.log', 'w')
end
