# encoding: utf-8
require 'spec_helper'

describe 'bootstrap::default' do
  before do
    # required for travis-ci
    stub_command('sudo -V').and_return(true)
  end # before

  %w(rhel fedora).each do |platform_family|
    describe "platform family: #{platform_family}" do
      let(:chef_run) do
        ChefSpec::Runner.new do |node|
          node.set['platform_family'] = platform_family
        end.converge(described_recipe)
      end # let

      describe 'bootstrap::rhel' do
        it 'includes described recipe' do
          expect(chef_run).to include_recipe(subject)
        end # it
      end # describe

    end # describe
  end # %()

  %w(debian fake_platform).each do |platform_family|
    describe "platform family: #{platform_family}" do
      let(:chef_run) do
        ChefSpec::Runner.new do |node|
          node.set['platform_family'] = platform_family
        end.converge(described_recipe)
      end # let

      describe 'bootstrap::rhel' do
        it 'does not include recipe' do
          expect(chef_run).to_not include_recipe(subject)
        end # it
      end # describe

    end # describe
  end # %()
end # describe
