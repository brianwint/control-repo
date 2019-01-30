class profile::localtesting{

# file { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   source => '\\\\infragistics.local\igfiles\Software\Microsoft\Development\Visual Studio.NET 2012\Update 5\VS2012.5.iso',
# }

# package { 'vs2010base':
#   name => 'Microsoft Visual Studio 2010 Premium - ENU',
#   ensure => installed,
#   source => 'Y:/VS2010Core/Setup/setup.exe',
#   install_options => [ '/q', '/UnattendFile', 'Y:\VS2010Core\Setup\vs2010options.ini' ],
#   }

# package { 'vs2010sp1':
#   name => 'Microsoft Visual Studio 2010 Premium SP1 - ENU',
#   ensure => installed,
#   source => 'Y:/VS2010SP1dvd1/Setup.exe',
#   install_options => [ '/q', '/log', 'c:/temp/vs2010_sp1_install_log.txt' ],
#   require => Package['vs2010base'],
#   }

exec { 'vs2017installer':
  command => 'Y:/vs_enterprise.exe --passive',
  provider => powershell,
  creates => 'C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe',
}

package { 'vs2017Enterprise':
  name => 'Visual Studio Enterprise 2017',
  ensure => '15.9.28307.344',
  source => 'C:\Program Files (x86)\Microsoft Visual Studio\Installer\vs_installer.exe',
  install_options => [ '--passive',
  '-add', 'Microsoft.VisualStudio.Workload.ManagedDesktop;includeRecommended',
  '-add', 'Microsoft.VisualStudio.Component.TestTools.CodedUITest',
  '--norestart' ],
  require => Exec['vs2017installer'],
  }

# mount_iso { 'C:\temp\VS2012.5.iso':
#   drive_letter => 'H',
# }

# windows_isos { 'C:\temp\VS2012.5.iso':
#   ensure => present,
#   isopath => 'C:\\temp\\VS2012.5.iso',
# }

}
