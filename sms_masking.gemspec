# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_masking/version'

Gem::Specification.new do |spec|
  spec.name          = "sms_masking"
  spec.version       = SmsMasking::VERSION
  spec.authors       = ["yunanhelmy"]
  spec.email         = ["m.yunan.helmy@gmail.com"]

  spec.summary       = %q{Simple ruby wrapper class for http://www.smsmasking.co.id.}
  spec.description   = %q{Simple ruby wrapper class for http://www.smsmasking.co.id.}
  spec.homepage      = "https://github.com/yunanhelmy/sms_masking"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/sms_masking"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "httparty"
end
