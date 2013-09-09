$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "heart_vbulletin4/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "heart_vbulletin4"
  s.version     = HeartVbulletin4::VERSION
  s.authors     = ["Charles Abbott"]
  s.email       = ["cwabbott@gmail.com"]
  s.homepage    = "https://github.com/cwabbott/heart_vbulletin4"
  s.summary     = "HeartVbulletin4 plugs metrics into HEART for your vBulletin forum (v4)."
  s.description = "HeartVbulletin4 plugs metrics into HEART for your vBulletin forum (v4)."

  s.files = Dir["{config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 3.2.14'
  s.add_dependency 'i18n'
  s.add_dependency 'heart'

  s.add_development_dependency "mysql2"
end
