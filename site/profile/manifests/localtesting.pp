class profile::localtesting{

file { 'VS2012.5.iso':
  ensure => present,
  path => 'C:\temp\VS2012.5.iso',
}

# windows_isos { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   isopath => 'C:\\temp\\VS2012.5.iso',
# }

}
