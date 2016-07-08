#
# == Class: pxp_agent::config
#
# Configure the pxp-agent. Right now this is only done to allow starting and 
# stopping the service cleanly, instead of its startup failing simply because 
# the configuration file is missing.
#
class pxp_agent::config
(
    String $broker

) inherits pxp_agent::params
{
    file { 'pxp_agent-pxp-agent.conf':
        ensure  => 'present',
        name    => '/etc/puppetlabs/pxp-agent/pxp-agent.conf',
        content => template('pxp_agent/pxp-agent.conf.erb'),
        owner   => $::os::params::adminuser,
        group   => $::os::params::admingroup,
        mode    => '0644',
    }
}
