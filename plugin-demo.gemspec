Gem::Specification.new do |s|
  s.name = "plugin-demo"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Luca Pradovera", "Juan de Bravo"]

  s.date = Date.today.to_s
  s.description = "Demo plugin for the Adhearsion plugin system."
  s.email = "dev&adhearsion.com"

  s.files = `git ls-files`.split("\n")

  s.has_rdoc = false
  s.homepage = "http://github.com/adhearsion/plugin-demo"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.2.0"
  s.summary = "Demo plugin for the new Adhearsion plugin system"

  s.add_runtime_dependency %q<adhearsion>, [">= 2.0.0.alpha1"]
  s.add_runtime_dependency %q<activesupport>, [">= 3.0.10"]

  s.add_development_dependency %q<bundler>, ["~> 1.0.0"]
  s.add_development_dependency %q<rspec>, [">= 2.5.0"]
  s.add_development_dependency %q<ci_reporter>, [">= 1.6.3"]
  s.add_development_dependency %q<simplecov>, [">= 0"]
  s.add_development_dependency %q<simplecov-rcov>, [">= 0"]
  s.add_development_dependency %q<yard>, ["~> 0.6.0"]
  s.add_development_dependency %q<rake>, [">= 0"]
  s.add_development_dependency %q<mocha>, [">= 0"]
  s.add_development_dependency %q<bones>
  s.add_development_dependency %q<guard-rspec>
  s.add_development_dependency 'ruby_gntp'

  s.specification_version = 2
end
