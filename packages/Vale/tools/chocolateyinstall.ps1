$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.9.0/vale_2.9.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '2a7965a4ef71ccbc5b219b42ae582e6f64359557b68baf890dbebea63be5c318'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs