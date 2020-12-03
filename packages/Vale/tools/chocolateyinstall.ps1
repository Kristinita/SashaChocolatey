$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.6.4/vale_2.6.4_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '44c77cea812d2db99cb65af5f2b4aea11b1a8037e0db539436d2f22a6896b3b3'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs