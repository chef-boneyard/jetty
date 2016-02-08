name             'jetty'
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Apache 2.0'
description      'Installs/Configures jetty'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.4.1'

depends 'java'

%w( debian ubuntu ).each do |os|
  supports os
end

recipe 'jetty::default', 'Installs and configures Jetty'

source_url 'https://github.com/chef-cookbooks/jetty' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/jetty/issues' if respond_to?(:issues_url)
