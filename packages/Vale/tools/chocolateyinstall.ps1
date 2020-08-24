$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.3.1/vale_2.3.4_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'd7c314ca9fe8d5a693aa79caa90c8f70c179b65766a594cd3bfa5b7e5e1a89c5'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs