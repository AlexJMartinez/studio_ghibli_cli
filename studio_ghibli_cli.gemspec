
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "studio_ghibli_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "studio_ghibli_cli"
  spec.version       = StudioGhibliCli::VERSION
  spec.authors       = ["'Alex Martinez'"]
  spec.email         = ["'alexandr3martin3z@gmail.com'"]

  spec.summary       = "Studio Ghibli Film Database"
  spec.description   = "CLI that presents all Studio Ghibli films and allows the user to access more information about the film."
  spec.homepage      = "https://github.com/AlexJMartinez/studio_ghibli_cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/AlexJMartinez/studio_ghibli_cli"
    spec.metadata["changelog_uri"] = "https://github.com/AlexJMartinez/studio_ghibli_cli"
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

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
   spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "httparty"
  spec.add_development_dependency "colorize"
  
end
