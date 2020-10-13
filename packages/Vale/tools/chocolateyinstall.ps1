$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.4.3/vale_2.4.3_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '3022309f59813c84c14b1008a5e079fa7f6d998c79c4a0349bda50673540c106'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs