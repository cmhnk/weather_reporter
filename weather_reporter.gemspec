Gem::Specification.new do |s|
  s.name        = 'weather_reporter'
  s.version     = '0.0.1'
  s.date        = '2017-03-15'
  s.summary     = "Wunderground weather reporter"
  s.description = "Get weather data for a user-inputed city/state"
  s.authors     = ["Corinne Henk"]
  s.email       = 'corinne@automatedinsights.com'
  s.files       = Dir["#{File.dirname __FILE__}/**/*.rb"]
  s.executables << 'bin/report'
  s.test_files = ['tests/test_weather_report.rb']

  [
  'active_record',
  'awesome_print'
  'httparty',
  'dotenv/load',
  'minitest/autorun',
  'minitest/pride'
].each{|x| s.add_dependency *x}
end
