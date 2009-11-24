# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{objectreload-foreign_key_extensions}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mateusz Drozdzynski"]
  s.date = %q{2009-10-20}
  s.email = %q{gems@objectreload.com}
  s.extra_rdoc_files = [
    "README"
  ]
  s.files = [
    ".gitignore",
     "README",
     "Rakefile",
     "VERSION",
     "init.rb",
     "install.rb",
     "lib/foreign_key_extensions.rb",
     "objectreload-foreign_key_extensions.gemspec",
     "test/foreign_key_extensions_test.rb",
     "test/test_helper.rb",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/limonka/foreign_key_extensions}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple way to create foreign key in migrate files.}
  s.test_files = [
    "test/foreign_key_extensions_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
