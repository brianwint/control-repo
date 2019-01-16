# The base level content for a build server
class profile::build_server{

file { 'c:/temp/Internal Tools Suite.msi':
ensure => present,
source => 'http://builds.infragistics.com/products/Tools/Internal%20Tools%20Suite.msi',
}

  package { "infragistics internal tools suite":
  ensure => installed,
  source => 'c:/temp/Internal Tools Suite.msi',
  install_options => [ '/qn' ],
  uninstall_options => [ '/x', '/qn'],
  require => File['internal-tools-suite-installer'],
}

}
