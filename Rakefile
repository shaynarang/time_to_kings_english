# frozen_string_literal: true

require 'rake'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

task :run do
  ruby 'run.rb'
end

task :spec do
  RSpec::Core::RakeTask.new(:spec) 
end

task :lint do
  RuboCop::RakeTask.new(:lint) do |task|
    task.patterns = ['lib/**/*.rb', 'spec/**/*.rb']
    task.fail_on_error = false
  end
end
