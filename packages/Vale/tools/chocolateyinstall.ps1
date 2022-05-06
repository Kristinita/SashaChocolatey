$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.16.1/vale_2.16.1_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '2db0d7bccf58575712848da67dbe0b450fa843283422a279cebcfc1a1b857ec2'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
