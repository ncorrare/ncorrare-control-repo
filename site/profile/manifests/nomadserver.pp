class profile::nomadserver {
  class { '::nomad':
      version       => '0.5.6',
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
       },
       'client'     => {
         'enabled'    => true,
         'servers'    => [
           "node-5.nomad.corrarello.net",
           "node-3.nomad.corrarello.net",
           "node-4.nomad.corrarello.net"
         ]
       },
    }
  }
}
