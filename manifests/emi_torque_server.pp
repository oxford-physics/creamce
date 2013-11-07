class creamce::emi_torque_server {
  
  $package_list = [ 'emi-torque-server']
  package { $package_list:
    ensure => installed
  }
  file { '/opt/glite/yaim/functions/post' :
       ensure => 'directory',
       owner  => 'root',
       group  => 'root',
       require => Package['emi-torque-server'],  
   }
 
  file { '/opt/glite/yaim/functions/post/config_torque_server' :
       ensure => 'file',
       source => "puppet:///modules/creamce/config_torque_server",
       owner  => 'root',
       group  => 'root',
       require => File['/opt/glite/yaim/functions/post'],
  }
}
