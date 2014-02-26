# encoding: utf-8
require 'spec_helper'

describe 'bootstrap::rhel' do
  before do
    # required for travis-ci
    stub_command('sudo -V').and_return(true)
  end # before

  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  describe 'man' do
    it 'includes described package' do
      expect(chef_run).to install_package(subject)
    end # it
  end # describe

  describe 'nano' do
    it 'includes described package' do
      expect(chef_run).to install_package(subject)
    end # it
  end # describe

  describe 'wget' do
    it 'includes described package' do
      expect(chef_run).to install_package(subject)
    end # it
  end # describe

  describe 'which' do
    it 'includes described package' do
      expect(chef_run).to install_package(subject)
    end # it
  end # describe

  describe 'sudo' do
    it 'includes described recipe' do
      expect(chef_run).to include_recipe(subject)
    end # it
  end # describe

end # describe
