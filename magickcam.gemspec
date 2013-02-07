Gem::Specification.new do |s|
  s.name = 'magickcam'
  s.version = '0.1.2'
  s.summary = 'magickcam = rb_webcam + rmagick'
  s.authors = ['James Robertson']
  s.files = Dir['lib/**/*.rb']
  s.add_dependency('rmagick') 
  s.signing_key = '../privatekeys/magickcam.pem'
  s.cert_chain  = ['gem-public_cert.pem']
end
