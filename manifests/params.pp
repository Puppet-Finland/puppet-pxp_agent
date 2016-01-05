#
# == Class: pxp_agent::params
#
# Defines some variables based on the operating system
#
class pxp_agent::params {

    case $::osfamily {
        'RedHat': {
            $service_name = 'pxp-agent'
        }
        'Debian': {
            $service_name = 'pxp-agent'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
