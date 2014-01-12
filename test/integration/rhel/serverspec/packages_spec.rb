# coding: utf-8
require 'spec_helper'

describe package('man') do
  it { should be_installed }
end # describe

describe package('nano') do
  it { should be_installed }
end # describe

describe package('wget') do
  it { should be_installed }
end # describe

describe package('which') do
  it { should be_installed }
end # describe
