# encoding: utf-8
require 'spec_helper'

describe 'bootstrap::rhel' do
  describe package('man') do
    it 'installs described package' do
      expect(subject).to be_installed
    end # it
  end # describe

  describe package('nano') do
    it 'installs described package' do
      expect(subject).to be_installed
    end # it
  end # describe

  describe package('wget') do
    it 'installs described package' do
      expect(subject).to be_installed
    end # it
  end # describe

  describe package('which') do
    it 'installs described package' do
      expect(subject).to be_installed
    end # it
  end # describe

  describe file('/etc/sudoers') do
    it 'is a file' do
      expect(subject).to be_file
    end # it

    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 440' do
      expect(subject).to be_mode(440)
    end # it

    it 'includes expected content' do
      expect(subject.content).to include('PATH SSH_AUTH_SOCK')
    end # it
  end # describe

  describe file('/etc/sudoers.d/jeeves') do
    it 'is a file' do
      expect(subject).to be_file
    end # it

    it 'is owned by root' do
      expect(subject).to be_owned_by('root')
    end # it

    it 'is in group root' do
      expect(subject).to be_grouped_into('root')
    end # it

    it 'is mode 440' do
      expect(subject).to be_mode(440)
    end # it

    it 'matches expected content' do
      expect(subject.content).to match(/^jeeves\s.*NOPASSWD:ALL$/)
    end # it
  end # describe

end # describe
