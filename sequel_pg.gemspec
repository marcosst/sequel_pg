SEQUEL_PG_GEMSPEC = Gem::Specification.new do |s|
  s.name = 'sequel_pg'
  s.version = '0.9.0'
  s.platform = Gem::Platform::RUBY
  s.has_rdoc = false
  s.extra_rdoc_files = ["README.rdoc", "CHANGELOG", "LICENSE"]
  s.rdoc_options += ["--quiet", "--line-numbers", "--inline-source", '--title', 'sequel_pg: Faster SELECTs when using Sequel with pg', '--main', 'README.rdoc']
  s.summary = "Faster SELECTs when using Sequel with pg"
  s.author = "Jeremy Evans"
  s.email = "code@jeremyevans.net"
  s.homepage = "http://github.com/jeremyevans/sequel_pg"
  s.required_ruby_version = ">= 1.8.6"
  s.files = %w(LICENSE CHANGELOG README.rdoc Rakefile ext/sequel_pg/extconf.rb ext/sequel_pg/sequel_pg.c)
  s.extensions << 'ext/sequel_pg/extconf.rb'
  s.add_dependency("pg", [">= 0.8.0"])
  s.add_dependency("sequel", [">= 3.6.0"])
  s.description = <<END
sequel_pg overwrites the inner loop of the Sequel postgres
adapter row fetching code with a C version.  The C version
is significantly faster (2-6x) than the pure ruby version
that Sequel uses by default.
END
end