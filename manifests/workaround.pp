class creamce::workaround {

### Bnotifier looks for a server_logs directory defined in BATCH_LOG_DIR

  file { ["/var/log/torque/", "/var/log/torque/server_logs" ]:
         ensure => 'directory',
         owner => 'root',
         group => 'root',
   }
#### Disable VO tag creation as it is NFS mounted

file { '/opt/glite/yaim/functions/local/config_cream_vo_tag_dir' :
       ensure => 'file',
       source => "puppet:///modules/creamce/config_cream_vo_tag_dir",
       owner  => 'root',
       group  => 'root',
       require => Package['emi-cream-ce'],
  }
#### No of allowed FTP connection in cream limiter script is very low. Increased it from 30 to 100
file { '/etc/glite-ce-cream-utils/glite_cream_load_monitor.conf' :
       ensure => 'file',
       source => "puppet:///modules/creamce/glite_cream_load_monitor.conf",
       owner  => 'root',
       group  => 'root',
       mode   => '0644',
       require => Package['emi-cream-ce'],
  }

# Increase default size of cream log file from 20 to 50MB 

file { '/etc/glite-ce-cream/log4j.properties' :
       ensure => 'file',
       source => "puppet:///modules/creamce/log4j.properties",
       backup => true,
       owner  => 'root',
       group  => 'root',
       mode   => '0644',
       require => Package['emi-cream-ce'],
  }

  
}
