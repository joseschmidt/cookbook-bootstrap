# encoding: utf-8
name              'bootstrap'
maintainer        'James Hardie Building Products, Inc.'
maintainer_email  'doc.walker@jameshardie.com'
description       'Bootstraps a client with basic packages and user ' \
                  'privileges.'
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
license           'Apache 2.0'
version           '0.2.0'

#--------------------------------------------------------------------- recipes
recipe            'bootstrap',
                  'Includes the platform-specific recipe based on the ' \
                  'platform_family attribute, as reported by the ohai plugin'
recipe            'bootstrap::rhel',
                  'Performs the RHEL-specific actions'

#------------------------------------------------------- cookbook dependencies
depends           'sudo', '~> 2.3.0'

#--------------------------------------------------------- supported platforms
# tested
supports          'centos'

# platform_family?('rhel'): not tested, but should work
supports          'amazon'
supports          'oracle'
supports          'redhat'
supports          'scientific'

# platform_family?('debian'): not tested, but may work
supports          'debian'
supports          'ubuntu'
