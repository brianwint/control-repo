class profile::localtesting{

file { 'Internal Tools Suite.wixpdb':
  ensure => present,
  path => 'C:\temp\Internal Tools Suite.wixpdb',
  source => '\\\\infragistics.local\igfiles\Localbuilds\Internal Tools Suite\Internal Tools Suite_1.0.0.1181\Internal Tools Suite.wixpdb',
}

# file { 'VS2012.5.iso':
#   ensure => present,
#   path => 'C:\temp\VS2012.5.iso',
#   source => '\\\\infragistics.local\igfiles\Software\Microsoft\Development\Visual Studio.NET 2012\Update 5\VS2012.5.iso',
# }

# windows_isos { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   isopath => 'C:\\temp\\VS2012.5.iso',
# }

}
