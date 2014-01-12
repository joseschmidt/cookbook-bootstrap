# coding: utf-8
require 'spec_helper'

describe file('/etc/sudoers') do
  its(:content) { should match(/PATH SSH_AUTH_SOCK/) }
end # describe

describe file('/etc/sudoers.d/jeeves') do
  its(:content) { should match(/^jeeves\s.*NOPASSWD:ALL$/) }
end # describe
