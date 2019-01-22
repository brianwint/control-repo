class profile::localtesting{

file { 'VS2012.5.iso':
  ensure => present,
  path => 'C:/temp/VS2012.5.iso',
  source => '\\\\infragistics.local\\igfiles\\Software\\Microsoft\\Development\\Visual Studio.NET 2012\\Update 5\\VS2012.5.iso',
}

mount_iso { 'C:/temp/VS2012.5.iso':
  drive_letter => 'H',
  require => File['VS2012.5.iso'],
}

}
