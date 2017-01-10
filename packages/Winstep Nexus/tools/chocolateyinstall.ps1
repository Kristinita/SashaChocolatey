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

  checksum        = 'DD3E1C9121B56595D5B94B6EA33F3206B75C90C5334D6B13E240D3EC38637A27'
  checksumType    = 'sha256'
  checksum64      = 'DD3E1C9121B56595D5B94B6EA33F3206B75C90C5334D6B13E240D3EC38637A27'
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
