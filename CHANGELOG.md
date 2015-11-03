jetty cookbook CHANGELOG
========================
This file is used to list changes made in each version of the jetty cookbook.

v0.1.7
------
* Fix attributes to use a proper platform family so they are correctly set based on platform family
* Add node['jetty']['install_java'] to control if java is installed via the java attribute or if the user manages java installs themselves.  Defaults to true
* Test in Travis using kitchen-docker

v0.1.6
------
* Fix node attribute level in the recipe to fix Chef 12 support
* Added gitignore and chefignore files
* Added Test Kitchen config
* Added Rubocop config
* Added Travis config
* Added Berksfile
* Updated Testing and Contributing docs
* Added maintainers.toml and maintainers.md files
* Added Gemfile with development dependencies
* Added Travis and cookbook version badges to the Readme
* Expanded the requirements section in the Readme
* Added a Rakefile for simplified testing
* Added issues_url and source_url to the metadata.rb
* Updated Opscode -> Chef Software
* Added basic Chefspec converge test
* Converted symbols to strings for Foodcritic
* Resolved all Rubocop warnings

v0.1.5
------
- reverting OpenSSL module namespace change

v0.1.4
------
- Updating to work with latest openssl cookbook

v0.1.2
------
- [COOK-2964]: jetty cookbook has foodcritic failures

v0.1.0
------
- [COOK-1434] - Add cargo remote deploy support
