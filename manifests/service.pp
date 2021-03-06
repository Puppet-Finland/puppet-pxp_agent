#
# == Class: pxp_agent::service
#
# Manage the pxp-agent service
#
class pxp_agent::service
(
    Variant[Boolean, Enum['running', 'stopped']] $ensure,
    Boolean                                      $enable

) inherits pxp_agent::params
{
    service { 'pxp_agent':
        ensure => $ensure,
        name   => $::pxp_agent::params::service_name,
        enable => $enable,
    }
}
