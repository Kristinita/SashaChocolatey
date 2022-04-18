$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.16.0/vale_2.16.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'e6aac1a9dcb4027f432216ca249520784b619ef37f3424f34ef227b8d60869a2'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
