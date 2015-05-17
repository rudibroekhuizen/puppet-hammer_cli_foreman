# == Class: hammer_cli_foreman::package
#
class hammer_cli_foreman::package {

  package { ['hammer_cli', 'hammer_cli_foreman']:
    ensure   => installed,
    provider => gem,
  }
  
}
