$ErrorActionPreference = 'Stop';

$packageName = 'Winaero Tweaker'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'http://winaero.com/request.php?1796'
$url64       = 'http://winaero.com/request.php?1796'
$installer   = Join-Path $toolsDir 'WinaeroTweaker-0.6.0.9-setup.exe'

$UnzipArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = '5103D54B7DE5A0C2DC4B9AD96C632C3B3BA08DA908C05FDE61AFC95C864D81E1'
  checksumType    = 'sha256'
  checksum64      = '5103D54B7DE5A0C2DC4B9AD96C632C3B3BA08DA908C05FDE61AFC95C864D81E1'
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
