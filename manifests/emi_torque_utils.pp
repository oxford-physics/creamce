class creamce::emi_torque_utils {
  
  $package_list = [ 'emi-torque-utils']
  package { $package_list:
    ensure => installed
  }
### Disable sshd config and add more than one CE to ssh_known_host file 
include creamce::disable_yaim_sshd_config

}
