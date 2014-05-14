$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_jquery_mobile_paginate/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_jquery_mobile_paginate"
  s.version     = RailsJqueryMobilePaginate::VERSION
  s.authors     = ["Kasper Johansen"]
  s.email       = ["k@spernj.org"]
  s.homepage    = "https://www.github.com/kaspernj/rails_jquery_mobile_paginate"
  s.summary     = "Pagination with an interface built for jQuery Mobile."
  s.description = "Heavily inspired from will_paginate but for jQuery Mobile."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.0.4"
  s.add_dependency "haml-rails"
  
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "jquery_mobile_rails"
  s.add_development_dependency "will_paginate"
  s.add_development_dependency "jquery-rails"
  s.add_development_dependency "coffee-rails"
  s.add_development_dependency "sass-rails"
  s.add_development_dependency "ransack"
  s.add_development_dependency "simple_form"
end
