$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = ''
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.3.1/vale_2.3.1_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = ''
  checksumType    = ''
  checksum64      = 'd91b5e82ddbff5ba7de24b2275fc35e4d7f53988a8bf0e563e1178bb56d3f24b'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs