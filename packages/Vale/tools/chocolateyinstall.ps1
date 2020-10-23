$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.5.0/vale_2.5.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '766bb6199ce62338b07579cc9c4ffd3c75b34e2f5eb9a06525573f804d10d0cc'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs