class profile::consulserver {
  class { '::consul':
    version => '0.9.0',
    config_hash => {
      'bootstrap_expect' => 3,
      'client_addr'      => '0.0.0.0',
      'data_dir'         => '/opt/consul',
      'datacenter'       => 'stn',
      'log_level'        => 'INFO',
      'node_name'        => $facts['fqdn'],
      'server'           => true,
    }
  }
}
