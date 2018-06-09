File.expand_path('../lib', __FILE__).tap do |lib|
  $LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
end

require 'eth_wallet_format_validator/version'

Gem::Specification.new do |spec|
  spec.name          = 'eth_wallet_format_validator'
  spec.version       = EthWalletFormatValidator::VERSION
  spec.authors       = ['Sergey Konev']
  spec.email         = ['sergey@cimon.io']

  spec.summary       = 'custom validator for ethereum wallets format'
  spec.description   = 'This gem provides validator for ActiveRecord models to ensure format of ethereum wallet fields.'
  spec.homepage      = 'https://github.com/cimon-io/eth_wallet_format_validator'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activemodel', '>= 3.0.0'
  spec.add_dependency 'eth', '>= 0.4.6'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '>= 3.7'
end
