task default: [:build, :install, :test]

task :build do
  sh "gem build redfairy.gemspec"
end #task

task :install do
  sh "gem install redfairy"
end #task

task :test do
  ruby "test/function_tests.rb"
end #task
