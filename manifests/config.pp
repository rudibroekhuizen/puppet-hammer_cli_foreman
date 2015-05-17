# == Class: hammer_cli_foreman::config
#
class hammer_cli_foreman::config {

  file { '/etc/hammer':
    ensure => 'directory',
  }
  
}
