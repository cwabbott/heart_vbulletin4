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
  s.summary     = "HeartVbulletin4 plugs metrics into HEART for your vBulletin (version 4) forum."
  s.description = "HeartVbulletin4 plugs metrics into HEART (https://github.com/cwabbott/heart) for your vBulletin (version 4) forum."

  s.files = Dir["{config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'heart'

  s.add_development_dependency "mysql2"
end
