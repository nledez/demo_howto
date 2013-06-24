# DemoHowto

# Howto create a gem with tests & other stuff:
    gem install bundler # Si jamais il n'est pas installé
    bundle gem demo_howto -t
    cd demo_howto
    gvim demo_howto.gemspec # Add descrition/summary & rspec
    bundle
    bundle exec rspec
    bundle exec guard init
    # Open Guardfile and clean all unneeded parts (Rails, ...)
    md spec\lib

# Launch tests with:
    bundle exec guard

# Edit test & lib with a simple class:
    gvim -o lib\demo_howto_class.rb spec\lib\demo_howto_class_spec.rb

# Edit test & lib the same with a module:
    gvim -o lib\demo_howto.rb spec\lib\demo_howto_spec.rb


## Add/update to gemspec file:
    spec.test_files    = spec.files.grep(%r{^(spec)/})

    spec.add_development_dependency "rspec"
    spec.add_development_dependency "wdm" if RUBY_PLATFORM =~ /mingw/
    spec.add_development_dependency "ruby_gntp" if RUBY_PLATFORM =~ /mingw/
    spec.add_development_dependency "rb-fsevent" if RUBY_PLATFORM =~ /darwin/
    spec.add_development_dependency "growl" if RUBY_PLATFORM =~ /darwin/
    spec.add_development_dependency "guard"
    spec.add_development_dependency "guard-rspec"
