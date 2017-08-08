class profile::consulserver {
  class { '::consul':
    version => '0.9.0',
    pretty_config => true,
    config_hash => {
      'bootstrap_expect' => 3,
      'client_addr'      => '0.0.0.0',
      'data_dir'         => '/opt/consul',
      'bind_addr'        => $facts['ipaddress_eth0'],
      'retry_join'       => ['172.16.10.57', '172.16.10.58', '172.16.10.54'],
      'datacenter'       => 'stn',
      'log_level'        => 'INFO',
      'node_name'        => "$facts['hostname'].nomad.corrarello.net",
      'server'           => true,
      'ui'               => true,
    }
  }
}
