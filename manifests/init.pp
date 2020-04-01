# == Class: pxp_agent
#
# This class sets up pxp_agent
#
# Currently functionality is limited to managing the service.
#
# == Parameters
#
# [*manage*]
#   Whether to manage pxp-agent using Puppet. Valid values are true (default) 
#   and false.
# [*manage_config*]
#   Whether to manage pxp-agent configuration using Puppet. Valid values are 
#   true (default) and false.
# [*broker*]
#   The hostname/IP of the PCP broker. Defaults to 'localhost', which probably
#   does not make sense in most cases, but at least allows the pxp-agent to 
#   start correctly.
# [*service_ensure*]
#   The status of the pxp_agent service. Valid values are 'running' / true 
#   and 'stopped' / false. This parameter can be left undefined to not manage 
#   the service status at all.
# [*service_enable*]
#   Enable the pxp_agent service. Valid values are true (default) and false.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class pxp_agent
(
    Boolean $manage = true,
    Boolean $manage_config = true,
            $broker = 'localhost',
            $service_ensure = undef,
            $service_enable = true
)
{

if $manage {

    if $manage_config {
        class { '::pxp_agent::config':
            broker => $broker,
        }
    }

    class { '::pxp_agent::service':
        ensure => $service_ensure,
        enable => $service_enable,
    }
}
}
