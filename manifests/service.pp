# == Class profile_mcollective::service
#
# This class is meant to be called from profile_mcollective.
# It ensure the service is running.
#
class profile_mcollective::service {

  service { $::profile_mcollective::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
