task default: [:build, :test]

task :build do
  sh "gem build redfairy.gemspec"
end #task

task :test do
  ruby "test/function_tests.rb"
end #task
