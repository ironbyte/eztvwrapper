
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "eztvwrapper/version"

Gem::Specification.new do |spec|
  spec.name          = "eztvwrapper"
  spec.version       = EZTVWrapper::VERSION
  spec.authors       = ["Moncy"]
  spec.email         = ["illusivespectre@gmail.com"]

  spec.summary       = %q{Simple Ruby wrapper for EZTV.}
  spec.description   = %q{Simple Ruby wrapper for EZTV that enables you to search for shows and to pull up show data in a structured format.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "addressable"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 11.2"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "webmock"

  spec.add_runtime_dependency "httparty"
  spec.add_runtime_dependency "nokogiri"
end
