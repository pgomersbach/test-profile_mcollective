# an example profile for mco clients
class profile_mcollective::client (
  $middleware_hosts   = $profile_mcollective::params::middleware_hosts,
  $ssl_server_cert    = $profile_mcollective::params::ssl_server_cert,
  $ssl_server_private = $profile_mcollective::params::ssl_server_private,
  $ssl_server_public  = $profile_mcollective::params::ssl_server_public,
  $ssl_ca_cert        = $profile_mcollective::params::ssl_ca_cert,
  $connector          = $profile_mcollective::params::connector,
) {

  mcollective::user { "${::hostname}_client":
    homedir           => '/root',
    certificate       => $ssl_server_cert,
    private_key       => $ssl_server_private,
    ssl_ca_cert       => $ssl_ca_cert,
    ssl_server_public => $ssl_server_public,
    middleware_hosts  => $middleware_hosts,
    middleware_ssl    => false,
    securityprovider  => 'psk',
    connector         => $connector,
  }

}
