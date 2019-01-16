# The base level content for a build server
class profile::build_server{

file { 'c:/temp':
ensure => directory,
}

file { 'c:/temp/Internal Tools Suite.msi':
ensure => file,
source => 'http://builds.infragistics.com/products/Tools/Internal%20Tools%20Suite.msi',
checksum => ctime,
require => File['c:/temp'],
}

  package { "infragistics internal tools suite":
  name => 'Infragistics Internal Tools Suite 1.0.1177',
  ensure => '1.0.1177',
  source => 'c:/temp/Internal Tools Suite.msi',
  install_options => [ '/lvx*', 'c:/temp/install_log.txt' ],
  require => File['c:/temp/Internal Tools Suite.msi'],
}

}
