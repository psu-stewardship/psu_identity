# frozen_string_literal: true

require_relative 'lib/psu_identity/version'

Gem::Specification.new do |spec|
  spec.name          = 'psu_identity'
  spec.version       = PsuIdentity::VERSION
  spec.authors       = ['Alex Kiessling']
  spec.email         = ['ajkiessl@gmail.com']

  spec.summary       = "Gem for interfacing with psu's search-service"
  spec.description   = "Gem for interfacing with psu's search-service"
  spec.homepage      = 'https://github.com/psu-libraries/psu_identity'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 3.1.3')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'faraday', '~> 1.0'
  spec.add_dependency 'json'
  spec.add_dependency 'oauth2'
  spec.add_dependency 'rake', '>= 12.0'

  spec.add_development_dependency 'pry-byebug', '~> 3.9'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its', '~> 1.3'
  spec.add_development_dependency 'rubocop', '~> 1.28'
  spec.add_development_dependency 'rubocop-performance', '~> 1.11'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.5'
  spec.add_development_dependency 'simplecov', '=0.17'
  spec.add_development_dependency 'vcr', '~> 6.1'
  spec.add_development_dependency 'webmock', '~> 3.18'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
