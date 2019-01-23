class profile::localtesting{

# file { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   source => '\\\\infragistics.local\igfiles\Software\Microsoft\Development\Visual Studio.NET 2012\Update 5\VS2012.5.iso',
# }

package { 'Microsoft Visual Studio 2010 Premium - ENU':
  name => "Microsoft Visual Studio 2010 Premium - ENU",
  ensure => installed,
  source => 'Y:/VS2010Core/Setup/setup.exe',
  install_options => [ '/q', '/UnattendFile', 'Y:/VS2010Core/Setup/vs2010options.ini' ],
  }

package { 'Microsoft Visual Studio 2010 Premium SP1 - ENU':
  name => "Microsoft Visual Studio 2010 Premium - ENU",
  ensure => installed,
  source => 'Y:/VS2010SP1dvd1/Setup.exe',
  install_options => [ '/q', '/log', 'c:/temp/vs2010_sp1_install_log.txt' ],
  require => Package['Microsoft Visual Studio 2010 Premium - ENU'],
  }

# mount_iso { 'C:\temp\VS2012.5.iso':
#   drive_letter => 'H',
# }

# windows_isos { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   isopath => 'C:\\temp\\VS2012.5.iso',
# }

}
