# encoding: utf-8
require 'spec_helper'

describe 'bootstrap::default' do
  [
    { :platform => 'centos', :version => '6.5' },
    { :platform => 'fedora', :version => '20' }
  ].each do |i|
    context "#{i[:platform]}/#{i[:version]}" do
      before do
        # required for travis-ci
        stub_command('sudo -V').and_return(true)
      end # before

      let(:chef_run) do
        ChefSpec::Runner.new(i) do |node|
        end.converge(described_recipe)
      end # let

      #------------------------------------------------------ include_recipe[]
      describe 'bootstrap::rhel' do
        it 'includes described recipe' do
          expect(chef_run).to include_recipe(subject)
        end # it
      end # describe

    end # context
  end # [...].each

end # describe
