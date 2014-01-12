bootstrap Cookbook
==================
[![Build Status](https://travis-ci.org/jhx/cookbook-bootstrap.png?branch=master)](https://travis-ci.org/jhx/cookbook-bootstrap)

Bootstraps a client with user(s) and basic packages.


Requirements
------------
### Cookbooks
The following cookbook is a direct dependency because it's used for common "default" functionality.

- `sudo` (for `bootstrap::rhel`)

### Platforms
The following platforms are supported and tested under test kitchen:

- CentosOS 5.9, 6.5

Other RHEL family distributions are assumed to work.


Attributes
----------
None.


Recipes
-------
This cookbook provides two main recipes for bootstrapping a node.

- `default.rb` - *Use this recipe* and the correct recipe is included based on the platform family.
- `rhel.rb` - *Use this recipe* to specify the RHEL-specific recipe.

### default
This recipe includes the platform-specific recipe based on the `platform_family` attribute, as reported by the `ohai` plugin.

### rhel
This recipe performs the RHEL-specific actions.


Usage
-----
On client nodes, use the default recipe:

````javascript
{ "run_list": ["recipe[bootstrap]"] }
````

The following packages are installed on the node:

- `man`
- `nano`
- `wget`
- `which`

Afterward, it configures `/etc/sudoers` and creates the `jeeves` deploy user.


License & Authors
-----------------
- Author:: Doc Walker (<doc.walker@jameshardie.com>)

````text
Copyright 2013-14, James Hardie Building Products, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
````
