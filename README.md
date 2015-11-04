jetty Cookbook
==============

[![Build Status](https://travis-ci.org/chef-cookbooks/jetty.svg?branch=master)](http://travis-ci.org/chef-cookbooks/jetty)
[![Cookbook Version](https://img.shields.io/cookbook/v/jetty.svg)](https://supermarket.chef.io/cookbooks/jetty)

Installs and configures Jetty, Java servlet engine and webserver.


Requirements
------------
#### Platforms
- Debian, Ubuntu
- RHEL, Fedora

#### Chef
- Chef 12+

#### Cookbooks
- java
- jpackage
- openssl

Attributes
----------
* `node["jetty"]["host"]` - Listen to connections from this network host, default '0.0.0.0'.
* `node["jetty"]["port"]` - The network port used by Jetty, default '8080'.
* `node["jetty"]["jetty_args"]` - Additional arguments to pass to Jetty, default ''.
* `node["jetty"]["java_options"]` - Extra options to pass to the JVM, default '-Xmx256m -Djava.awt.headless=true'.
* `node["jetty"]["cargo"]["username"]` - Username that is granted access to the Cargo remote deploy app, if you are using it.
* `node["jetty"]["cargo"]["password"]` - Password that grants access to the Cargo remote deploy app, if you are using it.
* `node['jetty']['install_java']` - Install java via the java cookbook. Defaults to true

Recipes
-------

## default.rb

The default recipe will install the native package for Jetty. The service will be managed via the package provided init scripts.

## cargo.rb

This recipe adds Cargo remote deploy support to the Jetty service by deploying the Cargo remote deployer app that is available at http://cargo.codehaus.org/Downloads . This recipe includes the default recipe.
To establish a password, set a default attribute like so:

  "default_attributes": {
    "jetty": {
      "cargo": {
        "password": "cargo123"
      }
    }
  },

Usage
-----

Simply include the recipe where you want Jetty installed.

License & Authors
-----------------

**Author:** Cookbook Engineering Team (<cookbooks@chef.io>)

**Copyright:** 2010-2015, Chef Software, Inc.

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
