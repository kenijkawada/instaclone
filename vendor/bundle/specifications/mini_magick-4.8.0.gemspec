# -*- encoding: utf-8 -*-
# stub: mini_magick 4.8.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mini_magick"
  s.version = "4.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Corey Johnson", "Hampton Catlin", "Peter Kieltyka", "James Miller", "Thiago Fernandes Massa", "Janko Marohni\u{107}"]
  s.date = "2017-07-06"
  s.description = "Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick"
  s.email = ["probablycorey@gmail.com", "hcatlin@gmail.com", "peter@nulayer.com", "bensie@gmail.com", "thiagown@gmail.com", "janko.marohnic@gmail.com"]
  s.homepage = "https://github.com/minimagick/minimagick"
  s.licenses = ["MIT"]
  s.requirements = ["You must have ImageMagick or GraphicsMagick installed"]
  s.rubygems_version = "2.5.1"
  s.summary = "Manipulate images with minimal use of memory via ImageMagick / GraphicsMagick"

  s.installed_by_version = "2.5.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["~> 3.5.0"])
      s.add_development_dependency(%q<guard>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<posix-spawn>, [">= 0"])
      s.add_development_dependency(%q<webmock>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["~> 3.5.0"])
      s.add_dependency(%q<guard>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<posix-spawn>, [">= 0"])
      s.add_dependency(%q<webmock>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["~> 3.5.0"])
    s.add_dependency(%q<guard>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<posix-spawn>, [">= 0"])
    s.add_dependency(%q<webmock>, [">= 0"])
  end
end
