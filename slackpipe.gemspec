Gem::Specification.new do |s|
  s.name        = 'slackpipe'
  s.version     = '0.0.1'
  s.date        = '2018-05-04'
  s.summary     = "Easily post messages to Slack from the command line"
  s.description = "Easily post messages to Slack from the command line"
  s.authors     = ["Mike Vosseller"]
  s.email       = 'michael.vosseller@gmail.com'
  s.files       = ["bin/slackpipe"]
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.license       = 'MIT'
end

