$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.14.0/vale_2.14.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'bd73e8f08988fd6f8c2b31b8efbb4aa8aec800fdf1908d305fdf182b1b60b186'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
