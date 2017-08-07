class profile::base {

  include ntp
  include profile::vaultserver
  include profile::consulserver
  include profile::nomadserver
  include docker
  include profile::dnsmasq

}
