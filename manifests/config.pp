# == Class: hammer_cli_foreman::config
#
class hammer_cli_foreman::config {

  # Create directories for config files
  file { ['/etc/hammer', '/etc/hammer/cli.modules.d']:
    ensure => 'directory',
  }
  
  create_resources( 'hammer_cli_foreman::defines::config', $hammer_cli_foreman::config_hash )

}
