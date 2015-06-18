# == Define: hammer_cli_foreman::defines::foreman_config.pp
#
define hammer_cli_foreman::defines::foreman_config (
  $setting,
  $value,
  ) {

  # Common settings
  Ini_setting {
    ensure         => present,
    path           => "/etc/hammer/cli.modules.d/${title}",
    section        => 'foreman',
    section_prefix => ":",
    section_suffix => "",
  }

  ini_setting { "ini_${title}:
    setting => $setting,
    value   => $value,
  }
  
}
