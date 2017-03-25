$ErrorActionPreference = 'Stop';

$packageName = 'winstep-nexus'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'http://www.winstep.net/nexus.zip'
$url64       = ''
$installer   = Join-Path $toolsDir 'NexusSetup.exe'

$UnzipArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = 'F06BA96DD3B6BA858AB5D10C78540F834A3CE7AE3F0AD781556F919F37AB7AFB'
  checksumType    = 'sha256'
  checksum64      = ''
  checksumType64  = 'sha256'

}

$InstallArgs =@{
	packageName   = $packageName
	fileType      = 'exe'

######
# EXE
######
# silentArgs   = '/S'           # NSIS
# silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
# silentArgs   = '/s'           # InstallShield
# silentArgs   = '/s /v"/qn"'   # InstallShield with MSI. Yes, use "quotes" after «v» and «qn», it is not typos.
# silentArgs   = '/s'           # Wise InstallMaster
# silentArgs   = '-s'           # Squirrel
# silentArgs   = '-q'           # Install4j

	silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'

}

Install-ChocolateyZipPackage @UnzipArgs

Install-ChocolateyPackage $installer @InstallArgs
