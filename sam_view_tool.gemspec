# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sam_view_tool/version'

Gem::Specification.new do |spec|
  spec.name          = "sam_view_tool"
  spec.version       = SamViewTool::VERSION
  spec.authors       = ["samgrimm"]
  spec.email         = ["samantha.grimm@gmail.com"]

  spec.summary       = %q{Various view specific methods for applications I use}
  spec.description   = %q{Provides generated HTML data}
  spec.homepage      = "https://github.com/samgrimm/sam-view-tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
