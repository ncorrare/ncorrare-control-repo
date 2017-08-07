class profile::nomadserver {
  class { '::nomad':
      version       => '0.6.0',
      pretty_config => true,
      config_hash => {
      'region'     => 'armhf',
      'datacenter' => 'STN',
      'log_level'  => 'INFO',
      'bind_addr'  => '0.0.0.0',
      'data_dir'   => '/opt/nomad',
      'server'     => {
        'enabled'          => true,
        'bootstrap_expect' => 3,
      },
      'consul' => {
         'address'          => "127.0.0.1:8500",
         'server_auto_join' => true,
         'client_auto_join' => true,
       },
    }
  }
}
