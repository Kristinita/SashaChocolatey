$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.7.1/vale_2.7.1_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'ddea7d9a975a24cf07c26c9a3988af0d294ba45e647ffb9999f52cc41e4a69f1'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs