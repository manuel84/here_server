# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'here_server/version'

Gem::Specification.new do |spec|
  spec.name = 'here_server'
  spec.version = HereServer::VERSION
  spec.authors = ['Manuel Dudda']
  spec.email = ['manueldudda@redpeppix.de']
  spec.summary = 'Run a Web-Server for the current directory instantly'
  spec.description = 'Run a Web-Server for the current directory instantly'
  spec.homepage = ''
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

end
