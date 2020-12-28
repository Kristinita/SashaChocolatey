$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.6.8/vale_2.6.8_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'f42c291cd09c94361b5786846ef0931aee0fe267180875df32a1219528a5232b'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs