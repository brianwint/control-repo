# The base level content for a build server
class profile::build_server{

file { 'internal-tools-suite-installer':
path => 'C:/temp/Internal Tools Suite.msi',
ensure => present,
source => 'http://builds.infragistics.com/products/Tools/Internal Tools Suite.msi',
}

  package { "infragistics internal tools suite":
  ensure => installed,
  source => 'C:/temp/Internal Tools Suite.msi',
  install_options => [ '/qn' ],
  uninstall_options => [ '/x', '/qn'],
  require => File['internal-tools-suite-installer'],
}

}
