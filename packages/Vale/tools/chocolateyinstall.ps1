$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.10.2/vale_2.10.2_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '9e414032aadedeea846f38039f351e189e45ecb587eeceb2fd9f3ad0b35306e8'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs