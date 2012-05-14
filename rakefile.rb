require 'bundler/setup'

require 'rake/testtask'

desc 'Default: run tests.'
task :default => :test

desc "Run tests"
Rake::TestTask.new do |t|
  t.pattern = 'test/test_*.rb'
end
