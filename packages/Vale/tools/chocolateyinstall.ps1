$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.8.0/vale_2.8.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'aeae74eda4afa12a471d52349e9aea58b57a1d3d4bf56f74469e051168577d54'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs