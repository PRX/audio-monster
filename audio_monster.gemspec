# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'audio_monster/version'

Gem::Specification.new do |spec|
  spec.name          = 'audio_monster'
  spec.version       = AudioMonster::VERSION
  spec.authors       = ['Andrew Kuklewicz']
  spec.email         = ['andrew@beginsinwonder.com']
  spec.summary       = %q{audio_monster manipulates and transcodes audio}
  spec.description   = %q{audio_monster manipulates and transcodes audio}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'nu_wav'
  spec.add_runtime_dependency 'mp3info'
  spec.add_runtime_dependency 'mimemagic'
  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
