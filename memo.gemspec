$LOAD_PATH.unshift 'lib'

Gem::Specification.new do |s|
  s.name = 'my_memo'
  s.version = open('VERSION').read.strip
  s.date = Time.now.strftime('%F')

  s.summary = 'Command line tool to remember everything'
  s.description = 'Command line tool to remember everything'
  
  s.homepage = 'https://github.com/NadjaW/memo'
  s.author = 'Nadja Walter'

  s.license = 'MIT'
  s.files = %w( LICENSE )

  s.files += Dir.glob('lib/**/*')
  s.files += Dir.glob('bin/**/*')
  s.executables = %w(memo)

end
