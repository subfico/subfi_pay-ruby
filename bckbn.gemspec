# frozen_string_literal: true

require_relative "lib/bckbn/version"

Gem::Specification.new do |spec|
  spec.name = "bckbn"
  spec.version = Bckbn::VERSION
  spec.authors = ["nikkypx"]
  spec.email = ["npalaniuk+github@gmail.com"]

  spec.summary = "Ruby client for the Bckbn API"
  spec.description = "Ruby client for the Bckbn API"
  spec.homepage = "https://github.com/anedot/bckbn-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://github.com/bckbn/bckbn-ruby/changelog.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git
                                                             .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "addressable", "~> 2.8.5"

  spec.add_development_dependency "faker"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "webmock"
end
