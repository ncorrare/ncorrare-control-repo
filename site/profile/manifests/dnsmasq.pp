class profile::dnsmasq {
  class { '::dnsmasq':
    configs_hash => {
        'consul' => {
            content => 'server=/consul/127.0.0.1#8600',
        },
        'upstream' => {
            content => 'server=8.8.8.8,4.4.4.4',
        },
      },
   }
}
