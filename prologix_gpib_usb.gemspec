# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'prologix_gpib_usb/version'

Gem::Specification.new do |spec|
  spec.name          = 'prologix_gpib_usb'
  spec.version       = PrologixGpibUsb::VERSION
  spec.authors       = ['Rob Carruthers']
  spec.email         = ['robcarruthers@mac.com']

  spec.summary       = 'Ruby wrapper for the Prologix GPIB USB device.'
  spec.description   = 'Ruby wrapper for the Prologix GPIB USB device.'
  spec.homepage      = 'https://github.com/robcarruthers/PrologixGpibUsb'

  spec.metadata['allowed_push_host'] = spec.homepage

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'rubyserial'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
