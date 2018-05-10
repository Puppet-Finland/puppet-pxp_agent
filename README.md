# pxp_agent

A Puppet module for managing pxp_agent. Currently this module only allows 
service management.

# Module usage

Usage from a manifest when using Puppetlabs packages:

    class { '::pxp_agent':
      service_ensure => 'stopped',
      service_enable => 'false',
    }

This ensures that pxp-agent is stopped and not enabled on boot.

For further details please refer to [init.pp](manifests/init.pp).
