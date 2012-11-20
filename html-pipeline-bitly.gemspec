# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = 'html-pipeline-bitly'
  gem.version       = '0.1'
  gem.authors       = ["Garrett Bjerkhoel"]
  gem.email         = ["me@garrettbjerkhoel.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = 'https://github.com/dewski/html-pipeline-bitly'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency 'redis'
  gem.add_dependency 'bitly', '~> 0.8'
end
