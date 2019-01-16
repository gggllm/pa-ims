require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.libs.push "src"
  t.test_files = FileList['test/*_spec.rb']
  t.verbose = true
end