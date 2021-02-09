$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.9.1/vale_2.9.1_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '971090d08fd52788ea132efdedb9e238005db81c9cb74d5c339ba07e02a9d6b2'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs