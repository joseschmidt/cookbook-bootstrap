Testing
=======
This cookbook uses a variety of testing components:

- Syntax: [Knife](http://docs.opscode.com/chef/knife.html#test)
- Chef Style lints: [Foodcritic](https://github.com/acrmp/foodcritic)
- Ruby Style lints: [Rubocop](https://github.com/bbatsov/rubocop)
- Unit tests: [ChefSpec](https://github.com/acrmp/chefspec)
- Integration tests: [Test Kitchen](https://github.com/opscode/test-kitchen)


Prerequisites
-------------
To develop on this cookbook, you must have a sane Ruby 1.9+ environment. Given the nature of this installation process (and it's variance across multiple operating systems), we will leave this installation process to the user.

You must also have `bundler` installed:

    $ gem install bundler

You must also have Vagrant and VirtualBox installed:

- [Vagrant](https://vagrantup.com)
- [VirtualBox](https://virtualbox.org)

Once installed, you must install the `vagrant-berkshelf` plugin:

    $ vagrant plugin install vagrant-berkshelf


Development
-----------
1. Clone the git repository from GitHub:

        $ git clone git@github.com:jhx/COOKBOOK.git

1. Install the dependencies using bundler:

        $ bundle install

1. Create a branch for your changes:

        $ git checkout -b my_bug_fix

1. Make any changes
1. Write tests to support those changes. It is highly recommended you write both unit and integration tests.
1. Run the tests:

    - `bundle exec rake`

    or run the tests individually:

    - `bundle exec rake knife`
    - `bundle exec rake rubocop`
    - `bundle exec rake foodcritic`
    - `bundle exec rake chefspec`
    - `bundle exec rake kitchen`

1. Assuming the tests pass, open a Pull Request on GitHub


Directory structure
-------------------
Below is the structure of the test/integration directory:

````ruby
.
├── spec                                # unit tests
│   ├── chef
│   │   └── knife.rb                    # knife configuration
│   ├── default_spec.rb                 # recipe spec
│   ├── foodcritic                      # custom foodcritic rules
│   ├── rhel_spec.rb                    # recipe spec
│   └── spec_helper.rb
└── test
    └── integration                     # integration tests
        └── rhel                        # suite (based on recipe)
            ├── bats                    # busser
            │   └── rhel.bats           # suite test
            └── serverspec              # busser
                ├── rhel_spec.rb        # suite spec
                └── spec_helper.rb
````
