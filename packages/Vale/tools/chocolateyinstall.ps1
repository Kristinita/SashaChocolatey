$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.15.5/vale_2.15.5_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '5b4da9b1c04404547287195fa453f1bddf2bebdb608319dc4295801f9d9a8c22'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
