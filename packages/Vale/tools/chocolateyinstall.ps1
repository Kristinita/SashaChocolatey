$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.6.3/vale_2.6.3_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '22d8ec5dbbe3794903d5502a6fdf6a1ea8e05ef0bc2ec4a6a855bf6e737124ce'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs