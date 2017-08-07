class profile::dnsmasq {
  class { '::dnsmasq':
    configs_hash => {
        'server' => {
            content => '/consul/127.0.0.1#8600',
        },
      },
   }
}
