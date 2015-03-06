# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'safe_env/version'

Gem::Specification.new do |spec|
  spec.name          = "safe_env"
  spec.version       = SafeEnv::VERSION
  spec.authors       = ["Oliver Searle-Barnes", "Andrew Nagi"]
  spec.email         = ["andrew.nagi@gmail.com"]
  spec.summary       = %q{`SAFE_ENV['ENV_VAR']` raises an error if $ENV_VAR is not set.}
  spec.description   = 'This gem defines one proceedure `SAFE_ENV` which works like `ENV` ' \
                       'with one important difference. It will raise an error if the ' \
                       'environment variable does not exists.'
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
