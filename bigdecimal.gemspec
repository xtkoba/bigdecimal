# coding: utf-8

bigdecimal_version = '3.0.1.dev'

Gem::Specification.new do |s|
  s.name          = "bigdecimal"
  s.version       = bigdecimal_version
  s.authors       = ["Kenta Murata", "Zachary Scott", "Shigeo Kobayashi"]
  s.email         = ["mrkn@mrkn.jp"]

  s.summary       = "Arbitrary-precision decimal floating-point number library."
  s.description   = "This library provides arbitrary-precision decimal floating-point number class."
  s.homepage      = "https://github.com/ruby/bigdecimal"
  s.license       = "Ruby"

  s.require_paths = %w[lib]
  s.extensions    = %w[ext/bigdecimal/extconf.rb]
  s.files         = %w[
    bigdecimal.gemspec
    ext/bigdecimal/bigdecimal.c
    ext/bigdecimal/bigdecimal.h
    ext/bigdecimal/bits.h
    ext/bigdecimal/feature.h
    ext/bigdecimal/missing.c
    ext/bigdecimal/missing.h
    ext/bigdecimal/missing/dtoa.c
    ext/bigdecimal/static_assert.h
    lib/bigdecimal.rb
    lib/bigdecimal/jacobian.rb
    lib/bigdecimal/ludcmp.rb
    lib/bigdecimal/math.rb
    lib/bigdecimal/newton.rb
    lib/bigdecimal/util.rb
    sample/linear.rb
    sample/nlsolve.rb
    sample/pi.rb
  ]

  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  s.add_development_dependency "benchmark_driver"
  s.add_development_dependency "fiddle"
  s.add_development_dependency "rake", ">= 12.3.3"
  s.add_development_dependency "rake-compiler", ">= 0.9"
  s.add_development_dependency "minitest", "< 5.0.0"
  s.add_development_dependency "irb"
end
