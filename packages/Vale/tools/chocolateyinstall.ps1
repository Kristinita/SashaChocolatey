$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.17.0/vale_2.17.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '858361beaf73e2d7bc296b8e8d27eb49b1f3d5c6979903d3a091e283f3f34ade'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
