$ErrorActionPreference = 'Stop';

$packageName = 'Performance Maintainer'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://downloads.sourceforge.net/project/pcsm/0.7/pcsm-setup-0.7.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed successfully.
  validExitCodes = (0, 1223)

  checksum      = '41D115BCFB3194C7C33D17D76DA9CB7039C0C052B73EE5D7F27C2800AA995326'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

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

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
