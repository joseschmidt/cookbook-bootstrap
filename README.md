bootstrap Cookbook
==================
[![Build Status](https://travis-ci.org/jhx/cookbook-bootstrap.png?branch=master)](https://travis-ci.org/jhx/cookbook-bootstrap)

Bootstraps a client with user(s) and basic packages.

Requirements
------------
- `'sudo', '~> 2.3.0'`

Platform Family
---------------
- RHEL, Fedora

Tested on:

- CentOS

Cookbooks
---------
Requires Opcode's `sudo` cookbook to configure `/etc/sudoers`.

Resources and Providers
-----------------------
None.

Attributes
----------
None.

Usage
-----
On client nodes, use the default recipe:

````javascript
{ "run_list": ["recipe[bootstrap]"] }
````

This will install the following packages on the node:

- `man`
- `nano`
- `wget`
- `which`

Afterward, it will configure `/etc/sudoers` and create the `jeeves` deploy user.

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
