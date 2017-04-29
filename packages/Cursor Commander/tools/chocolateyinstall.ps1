$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Cursor Commander'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'https://github.com/Kristinita/SashaChocolatey/raw/master/installation-files/Cursor%20Commander/cc.zip'
$url64       = ''
$installer   = Join-Path $toolsDir 'Cursor Commander-1.0-Win8.exe'

$UnzipArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum        = 'DFA69CD8291E4FB9BCC2F49169217AD5292A91E9B169F7380AB2C65C76E94AE2'
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
# silentArgs   = '/s /v"/qn"'   # InstallShield with MSI. Yes, use "quotes" after «v» and «qn», it not typos.
# silentArgs   = '/s'           # Wise InstallMaster
# silentArgs   = '-s'           # Squirrel
# silentArgs   = '-q'           # Install4j

	silentArgs   = '/S'

}

Install-ChocolateyZipPackage @UnzipArgs

Install-ChocolateyPackage $installer @InstallArgs
