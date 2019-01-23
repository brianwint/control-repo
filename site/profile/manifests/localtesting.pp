class profile::localtesting{

# file { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   source => '\\\\infragistics.local\igfiles\Software\Microsoft\Development\Visual Studio.NET 2012\Update 5\VS2012.5.iso',
# }

package { 'Microsoft Visual Studio 2010 Premium - ENU':
  name => "Microsoft Visual Studio 2010 Premium - ENU",
  ensure => installed,
  source => 'Y:/VS2010SP1dvd1/Setup.exe',
  install_options => [ '/log', 'c:/temp/vs2010_install_log.txt' ],
  }

# mount_iso { 'C:\temp\VS2012.5.iso':
#   drive_letter => 'H',
# }

# windows_isos { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   isopath => 'C:\\temp\\VS2012.5.iso',
# }

}
