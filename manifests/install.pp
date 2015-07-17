# == Class profile_mcollective::install
#
# This class is called from profile_mcollective for install.
#
class profile_mcollective::install {

  package { $::profile_mcollective::package_name:
    ensure => present,
  }
}
