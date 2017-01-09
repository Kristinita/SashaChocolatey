$ErrorActionPreference = 'Stop';

$packageName = 'PowerResizer'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://superb-dca2.dl.sourceforge.net/project/powerresizer/PowerResizer%20Setup/Release%200.95/PowerResizerSetup.msi
'
$url64       = 'https://superb-dca2.dl.sourceforge.net/project/powerresizer/PowerResizer%20Setup/Release%200.95/PowerResizerSetup.msi
'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  checksum      = '51A0F95A79772D6B2B5E8BC02924EFEF7174358CEF627587E7937A99F57EBEA3'
  checksumType  = 'sha256'
  checksum64    = '51A0F95A79772D6B2B5E8BC02924EFEF7174358CEF627587E7937A99F57EBEA3'
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

  silentArgs   = '/qb'
}

Install-ChocolateyPackage @packageArgs
