class profile::vaultserver {
  class { '::vault':
    backend => {
      consul => {
        path    => 'vault',
        address => '127.0.0.1:8500',
      }
    },
    listener => {
      tcp => {
        address     => '127.0.0.1:8200',
        tls_disable => 1,
      }
    },
    disable_mlock => true,
  }
}
