# == Class: hammer_cli_foreman::package
#
class hammer_cli_foreman::package {

  # Install packages needed (dependencies)
  package { ['ruby-dev', 'make']:
    ensure => installed,
  }

  # Install hammer
  package { ['hammer_cli', 'hammer_cli_foreman']:
    ensure   => installed,
    provider => gem,
    require  => Package ['ruby-dev', 'make'],
  }
  
}
