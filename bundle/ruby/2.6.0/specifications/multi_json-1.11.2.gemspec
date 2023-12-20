# -*- encoding: utf-8 -*-
# stub: multi_json 1.11.2 ruby lib

Gem::Specification.new do |s|
  s.name = "multi_json".freeze
  s.version = "1.11.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Bleigh".freeze, "Josh Kalderimis".freeze, "Erik Michaels-Ober".freeze, "Pavel Pravosud".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MQ4wDAYDVQQDDAVwYXZl\nbDEYMBYGCgmSJomT8ixkARkWCHByYXZvc3VkMRMwEQYKCZImiZPyLGQBGRYDY29t\nMB4XDTE1MDMwNDA0MTAzNVoXDTE2MDMwMzA0MTAzNVowPzEOMAwGA1UEAwwFcGF2\nZWwxGDAWBgoJkiaJk/IsZAEZFghwcmF2b3N1ZDETMBEGCgmSJomT8ixkARkWA2Nv\nbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKgJODgg1dH3weeyKtQF\nmhC3C8gleHSTZYAt1pMBZQ6QmRD7/kLIfLTJB/zgFUVoNoHVZ8qyFmx89reqk5Z4\nx/rIVskzpB76MushyaEJhw5UrxEZvoCK0b+nSUR8NT0YcznkjSbALBBagny5NWHn\n98LbVtIQYXdJTgC8xvV1u2Bix1JI/Qv1wuDKCw14XF2AFmT4nPt40FEUk4zWwbGI\nrdKjssA43TGDjzKmzdOpJ4aOble+Zq6N7jBacMdlsqQAvQ0bbGLokp8W7Ci/UNWC\nQ8DwDrjlbURMu729T70yuswrQHyxmh7SISMmjp44+C5ElwVbfcCQQxiwsdAcE3zD\nST0CAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFJ7X\nLy29ycziHHerLL3NCavLRSv5MB0GA1UdEQQWMBSBEnBhdmVsQHByYXZvc3VkLmNv\nbTAdBgNVHRIEFjAUgRJwYXZlbEBwcmF2b3N1ZC5jb20wDQYJKoZIhvcNAQEFBQAD\nggEBAJM/D4S0IHFerw9xcEKR2sehNn9deQKsS7auR3wAtxEitrPzKZb+8Uy3KVqP\nJt/z5WABxO2Bjd7IM+s445lZF6kDsGsYYydlEkf9yzOYrtVmISTJYrsApU8BZQfL\nbWJg8zt1qjAKmmwULsCiYOfIGhUIhKVdVKrlkdXFFCB5v8R124FZXjo43WXZ2OCp\n4W7nHEaaaZLxrPnZCAiaryoFUL06d78sxq9F4MYfSD4CLdwJjNb5TOrwVAXK9uE9\n88AJhXqiqrY/cm2sh/xcGvGkhy9YOMyMZZrCAq4ruaXAB+tAkMrJ1paJDJRgErvJ\n8Vss1khfU5E/Xig1ytdFyNPPkCA=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2015-07-04"
  s.description = "A common interface to multiple JSON libraries, including Oj, Yajl, the JSON gem (with C-extensions), the pure-Ruby JSON gem, NSJSONSerialization, gson.rb, JrJackson, and OkJson.".freeze
  s.email = ["michael@intridea.com".freeze, "josh.kalderimis@gmail.com".freeze, "sferik@gmail.com".freeze, "pavel@pravosud.com".freeze]
  s.homepage = "http://github.com/intridea/multi_json".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.3".freeze
  s.summary = "A common interface to multiple JSON libraries.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
  end
end
