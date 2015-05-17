# == Class: hammer_cli_foreman::config
#
class hammer_cli_foreman::config {

  # Create directories for config files
  file { ['/etc/hammer', '/etc/hammer/cli.modules.d']:
    ensure => 'directory',
  }
  
  # Modify config file
  augeas { "sshd_config":
    context => "/files/etc/hammer/cli.modules.d/cli_config.yml",
    changes => [
      "set spec[user = 'joe']/user joe",
      "set spec[user = 'joe']/host_group/host ALL",
    ],
  }
}
