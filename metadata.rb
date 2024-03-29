name             'cis-rhel' # ~FC078 ~FC121
maintainer       'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license          'Proprietary - All Rights Reserved'
description      'Installs/Configures cis-rhel'
long_description 'Installs/Configures cis-rhel'
version          '0.2.7'
chef_version     '>= 13.1' if respond_to?(:chef_version)

source_url 'https://github.com/chef/cis-rhel'
issues_url 'https://github.com/chef/cis-rhel/issues'

supports 'redhat', '>= 6.7'
supports 'centos', '>= 6.7'

depends 'aide', '~> 0.2'
depends 'auditd', '~> 2.3.4'
depends 'cron', '~> 5.1'
depends 'firewall', '~> 2.6'
depends 'ntp', '~> 3.5'
depends 'os-hardening', '~> 3.0'
depends 'rsyslog', '~> 6.0'
depends 'ssh-hardening', '~> 2.3'
depends 'sudo', '~> 5.3'
depends 'sysctl', '~> 0.9'
depends 'line', '~> 2.0.2'
