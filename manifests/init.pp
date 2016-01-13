# == Class: pxp_agent
#
# This class sets up pxp_agent
#
# Currently functionality is limited to managing the service.
#
# == Parameters
#
# [*manage*]
#   Whether to manage pxp_agent using Puppet. Valid values are true (default) 
#   and false.
# [*service_ensure*]
#   The status of the pxp_agent service. Valid values are 'running' / 'true' 
#   and 'stopped' / 'false'. This parameter can be left undefined to not manage 
#   the service status at all.
# [*service_enable*]
#   Enable the pxp_agent service. Valid values are the same as for the Puppet 
#   Service resource, that is, 'enabled' (default), 'disabled', 'manual' and 
#   'mask'.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class pxp_agent
(
    $manage = true,
    $service_ensure = undef,
    $service_enable = 'enabled'

)
{

validate_bool($manage)

if $manage {

    class { '::pxp_agent::service':
        ensure => $service_ensure,
        enable => $service_enable,
    }
}
}
