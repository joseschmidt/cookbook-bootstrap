#!/usr/bin/env rake
require 'bundler/setup'

task :default => [:build_ci]

desc 'Builds the package for ci server.'
task :build_ci do
  Rake::Task[:knife].execute
  Rake::Task[:foodcritic].execute
  Rake::Task[:chefspec].execute
end # task

desc 'Runs chefspec unit tests against the cookbook.'
task :chefspec do
  sh 'bundle exec rspec'
end # task

desc 'Runs foodcritic lint tool against the cookbook.'
task :foodcritic do
  sh 'bundle exec foodcritic -f any .'
end # task

desc 'Runs knife cookbook syntax checks against the cookbook.'
task :knife do
  sh 'bundle exec knife cookbook test -a -c test/knife.rb'
end # task
