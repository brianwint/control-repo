class profile::localtesting{

# file { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   source => '\\\\infragistics.local\igfiles\Software\Microsoft\Development\Visual Studio.NET 2012\Update 5\VS2012.5.iso',
# }

mount_iso { 'C:\temp\VS2012.5.iso':
  drive_letter => 'H',
}

# windows_isos { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   isopath => 'C:\\temp\\VS2012.5.iso',
# }

}
