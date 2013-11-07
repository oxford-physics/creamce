class creamce::disable_yaim_sshd_config { 

 file { '/opt/glite/yaim/functions/local/config_torque_submitter_ssh' :
       ensure => 'file',
       source => "puppet:///modules/creamce/config_torque_submitter_ssh",
       owner  => 'root',
       group  => 'root',
       require => Package['emi-torque-utils'],
  }


}
