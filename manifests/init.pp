# == Class: profile_mcollective
#
# Full description of class profile_mcollective here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class profile_mcollective
{

  # update apt sources before installing packages
  include apt
  Apt::Source <| |> -> Package <| |>

  # a profile class includes one or more classes, please include below
  include ::profile_mcollective::server
  include ::profile_mcollective::client
  include ::profile_mcollective::middleware::rabbitmq
}
