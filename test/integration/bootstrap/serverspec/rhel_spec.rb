# coding: utf-8
require 'spec_helper'

describe 'bootstrap::rhel' do
  it 'installs man' do
    expect(package 'man').to be_installed
  end # it

  it 'installs nano' do
    expect(package 'nano').to be_installed
  end # it

  it 'installs wget' do
    expect(package 'wget').to be_installed
  end # it

  it 'installs which' do
    expect(package 'which').to be_installed
  end # it

  it 'configures /etc/sudoers' do
    expect(file('/etc/sudoers').content).to match(/PATH SSH_AUTH_SOCK/)
  end # it

  it 'configures /etc/sudoers.d/jeeves' do
    expect(file('/etc/sudoers.d/jeeves').content)
      .to match(/^jeeves\s.*NOPASSWD:ALL$/)
  end # it
end # describe
