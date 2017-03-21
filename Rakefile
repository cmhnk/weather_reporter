require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'tests'
  t.test_files = FileList['tests/test_weather_reporter.rb']
end

desc "Run tests"
task :default => :test
