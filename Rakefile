#!/usr/bin/env rake

desc 'Runs foodcritic against the cookbook.'
task :foodcritic do
  sh 'bundle exec foodcritic -f any .'
end # task

task :default => :foodcritic
