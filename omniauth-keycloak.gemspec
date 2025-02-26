require File.expand_path("../lib/keycloak/version", __FILE__)
Gem::Specification.new do |spec|
  spec.name          = "omniauth-keycloak"
  spec.version       = Omniauth::Keycloak::VERSION
  spec.authors       = ["dimedroli4"]
  spec.email         = ["dimedroli4@gmail.com"]

  spec.description   = %q{Omniauth strategy for Keycloak}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/dimedroli4/omniauth-keycloak"
  spec.license       = "MIT"
  spec.required_rubygems_version = '>= 3.1.2'
  spec.required_ruby_version = '>= 2.6'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0")
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_dependency "omniauth", "~> 2.0.4"
  spec.add_dependency "omniauth-oauth2", "~> 1.7.1"
  spec.add_dependency "json-jwt", "~> 1.13.0"

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
  spec.add_development_dependency 'simplecov', '~> 0.21'
  spec.add_development_dependency 'webmock', '~> 3.14'
end
