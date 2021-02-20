
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "query_limiter/version"

Gem::Specification.new do |spec|
  spec.name          = "query_limiter"
  spec.version       = QueryLimiter::VERSION
  spec.authors       = ["Jitendra Kasaudhan"]
  spec.email         = ["jiten.ktm@gmail.com"]

  spec.summary       = "This gem will limit the results of the query by max_limit number"
  spec.description   = "If max_limit is not specified, this gem will return only 5 result items by default on all sql queries"
  spec.homepage      = "https://jkasaudhan.github.io"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/jkasaudhan/query_limiter_gem"
    spec.metadata["changelog_uri"] = "https://github.com/jkasaudhan/query_limiter_gem"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_dependency 'activerecord', '>= 5.0.0'
end
