# coding: utf-8
#
# Cookbook Name:: bootstrap
# Recipe:: rhel
#
# Copyright 2013, James Hardie Building Products, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#--------------------------------------------------- install required packages
%w(man nano wget which).each do |pkg|
  package pkg
end # %w(...).each


#----------------------------------------------- install yaml/ruby from source
# install yaml/ruby from source


#--------------------------------------------------- adjust sudoers parameters
node.set['authorization']['sudo']['groups'] = ['wheel']
node.set['authorization']['sudo']['include_sudoers_d'] = true
node.set['authorization']['sudo']['sudoers_defaults'] = [
  '!visiblepw',
  'env_reset',
  'env_keep = "COLORS DISPLAY HOSTNAME HISTSIZE INPUTRC KDEDIR \
               LS_COLORS MAIL PS1 PS2 QTDIR USERNAME \
               LANG LC_ADDRESS LC_CTYPE LC_COLLATE LC_IDENTIFICATION \
               LC_MEASUREMENT LC_MESSAGES LC_MONETARY LC_NAME LC_NUMERIC \
               LC_PAPER LC_TELEPHONE LC_TIME LC_ALL LANGUAGE LINGUAS \
               _XKB_CHARSET XAUTHORITY PATH SSH_AUTH_SOCK"'
  ]

include_recipe 'sudo'

sudo 'jeeves' do
  user      'jeeves'
  nopasswd  true
end # sudo 'jeeves'
