class profile::base {

  include ntp
  include profile::vaultserver
  include profile::consulserver
  include docker

}
