#require File.expand_path("../lib/repeated_job/version", __FILE__)

# Provide a simple gemspec so that you can easily use your
# Enginex project in your Rails apps through Git.
Gem::Specification.new do |s|
  s.name                      = "repeated_job"
  s.version                   = '0.0.0'   #Repeated::Job::VERSION
  s.platform                  = Gem::Platform::RUBY
  s.authors                   = [ "Alfredo Cruz" ]
  s.email                     = [ "alfredox@gmail.com" ]
  s.description               = "Extension to DelayedJob, to run repetitive tasks."
  s.summary                   = "repeated_job-#{s.version}"

  s.rubyforge_project         = "repeated_job"
  s.required_rubygems_version = "> 1.3.6"

  s.add_dependency "activesupport" , "~> 3.0"
  s.add_dependency "rails"         , "~> 3.0"
  s.add_dependency "delayed_job"   , "~> 3.0"

  s.files = Dir["lib/**/*"] + ["Rakefile", "README.markdown"]
  s.require_path = 'lib'
end