class creamce::install {
  $package_list = [ 'emi-cream-ce']
  package { $package_list:
    ensure => installed
  }
  
}
