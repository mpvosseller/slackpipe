Gem::Specification.new do |s|
  s.name        = 'slackpipe'
  s.version     = '0.0.1'
  s.date        = '2018-05-04'
  s.summary     = "Post messages to Slack from the command line"
  s.description = "Slackpipe allows you to easily post messages to Slack from the command line. You might for example use this to post results of a nightly script to a Slack channel."
  s.authors     = ["Mike Vosseller"]
  s.email       = 'michael.vosseller@gmail.com'
  s.homepage    = 'https://github.com/mpvosseller/slackpipe'
  s.files       = ["bin/slackpipe"]
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.license       = 'MIT'
end


