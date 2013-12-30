# coding: utf-8
require 'spec_helper'

describe 'bootstrap::rhel' do
  before do
    # required for travis-ci
    stub_command('sudo -V').and_return(true)
  end # before
  
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }
  
  it 'installs man' do
    expect(chef_run).to install_package('man')
  end # it
  it 'installs nano' do
    expect(chef_run).to install_package('nano')
  end # it
  it 'installs wget' do
    expect(chef_run).to install_package('wget')
  end # it
  it 'installs which' do
    expect(chef_run).to install_package('which')
  end # it
  it 'include recipe sudo' do
    expect(chef_run).to include_recipe('sudo')
  end # it
end # describe
