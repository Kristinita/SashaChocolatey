$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.4.0/vale_2.4.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '9dc52c42a0883518db1d72bc58a7c0e26717a9f4179ddcd1143727d9aca963a7'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs