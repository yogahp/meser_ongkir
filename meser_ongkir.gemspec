
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'meser_ongkir/version'

Gem::Specification.new do |spec|
  spec.name          = 'meser_ongkir'
  spec.version       = MeserOngkir::VERSION
  spec.authors       = ['Yoga Hapriana']
  spec.email         = ['thenelse@rocketmail.com']

  spec.summary       = 'A shipping cost plugin for Rails 5+ ' \
                       'based on RajaOngkir.com'
  spec.description   = 'MeserOngkir is a clean, powerful, ' \
                       'customizable and sophisticated shipping ' \
                       'cost plugin for Rails 5+'
  spec.homepage      = 'https://github.com/yogahp/meser_ongkir'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://github.com/yogahp/meser_ongkir'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end

  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
