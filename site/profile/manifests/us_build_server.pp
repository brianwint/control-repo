class profile::us_build_server{

  include profile::build_server

  class { 'timezone_win':
    timezone => 'Eastern Standard Time',
  }
}
