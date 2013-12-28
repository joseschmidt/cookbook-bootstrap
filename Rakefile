#!/usr/bin/env rake
require 'bundler/setup'

task :default => [:build_ci]

desc 'Builds the package for ci server.'
task :build_ci do
  Rake::Task[:knife_test_ci].execute
  Rake::Task[:foodcritic].execute
  Rake::Task[:chefspec].execute
end # task

desc 'Runs foodcritic against the cookbook.'
task :chefspec do
  sh 'bundle exec rspec'
end # task

desc 'Runs foodcritic against the cookbook.'
task :foodcritic do
  sh 'bundle exec foodcritic -f any .'
end # task

desc 'Runs foodcritic against the cookbook.'
task :knife_test_ci do
  sh 'bundle exec knife cookbook test -a -c test/knife.rb'
end # task
