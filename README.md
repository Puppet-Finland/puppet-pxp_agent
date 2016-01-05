# pxp_agent

A Puppet module for managing pxp_agent. Currently this module only allows 
service management.

# Module usage

Usage from Hiera when using Puppetlabs packages:

    classes:
        - pxp_agent
    
    pxp_agent::service_ensure: 'stopped'
    pxp_agent::service_enable: 'false'

This ensures that pxp-agent is stopped and not enabled on boot.

For further details please refer to the class documentation:

* [Class: pxp_agent](manifests/init.pp)

# Dependencies

See [metadata.json](metadata.json).

# Operating system support

This module has been tested on

* Ubuntu 14.04

Any *NIX-style operating system should work out of the box or with small 
modifications.

For details see [params.pp](manifests/params.pp).
