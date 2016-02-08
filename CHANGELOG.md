# jetty cookbook CHANGELOG
This file is used to list changes made in each version of the jetty cookbook.

## v0.4.0
- Remove the cargo recipe. This was outside the scope of this cookbook
- Remove RHEL install support. This was entirely broken and we need to rethink how we do it.  Expect this to be fixed in 1.0

## v0.3.1
- Fix port not being correctly templated in the jetty config

## v0.3.0
- Removed the auto password generation in the cargo recipe. Users should specify their own password vs. having Chef auto generate a password that is saved onto the node. This removes the need for the openssl cookbook.
- Removed duplicate platform specific node attributes
- Fixed the webxml template compilation

## v0.2.1
- Update another platform -> platform family
- Add RHEL derivatives to the metadata

## v0.2.0
- Use multipackage for package installs, which ups the minimum Chef release to 12.0 for this cookbook
- Use platform_family in the service setup and the package installation to better support RHEL and Debian derivatives
- Start / Enable the service after we template the configs to prevent starting up an unconfigured server and then instantly restarting it

## v0.1.7
- Fix attributes to use a proper platform family so they are correctly set based on platform family
- Add node['jetty']['install_java'] to control if java is installed via the java attribute or if the user manages java installs themselves.  Defaults to true
- Test in Travis using kitchen-docker

## v0.1.6
- Fix node attribute level in the recipe to fix Chef 12 support
- Added gitignore and chefignore files
- Added Test Kitchen config
- Added Rubocop config
- Added Travis config
- Added Berksfile
- Updated Testing and Contributing docs
- Added maintainers.toml and maintainers.md files
- Added Gemfile with development dependencies
- Added Travis and cookbook version badges to the Readme
- Expanded the requirements section in the Readme
- Added a Rakefile for simplified testing
- Added issues_url and source_url to the metadata.rb
- Updated Opscode -> Chef Software
- Added basic Chefspec converge test
- Converted symbols to strings for Foodcritic
- Resolved all Rubocop warnings

## v0.1.5
- reverting OpenSSL module namespace change

## v0.1.4
- Updating to work with latest openssl cookbook

## v0.1.2
- [COOK-2964]: jetty cookbook has foodcritic failures

## v0.1.0
- [COOK-1434] - Add cargo remote deploy support
