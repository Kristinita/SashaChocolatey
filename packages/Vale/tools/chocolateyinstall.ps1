$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.6.1/vale_2.6.1_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '1eb9d4247eef3dafe19943d8160f42b2c848775d1379527f2b0b76fcc7ada284'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs