$ErrorActionPreference = 'Stop';

$packageName = 'Wassapp'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'http://lowlevel-studios.com/apps/wassapp/Wassapp_1.1.1.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '97D06869B4DDF4E5C3E9131AAA75623144566966D70B22E0D90A1338D2C59E50'
  checksumType  = 'sha256'
  checksum64    = '97D06869B4DDF4E5C3E9131AAA75623144566966D70B22E0D90A1338D2C59E50'
  checksumType64= 'sha256'

  ######
  # MSI
  ######
  # silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:
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
  # silentArgs   = '-s -u'        # Ghost

  silentArgs   = '/s /v"/qn"'
}

Install-ChocolateyPackage @packageArgs
