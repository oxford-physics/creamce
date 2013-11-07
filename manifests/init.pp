# Class: creamce
#
# This module manages creamce
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#
class creamce inherits creamce::params {
  
  include creamce::install
  include creamce::emi_torque_utils
  if $is_emi_torque_server {
    include creamce::emi_torque_server
 }
  include creamce::workaround

}
