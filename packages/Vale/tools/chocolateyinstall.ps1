$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.6.7/vale_2.6.7_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '6f7bf4179b1aecc3621398a8385b932ba51fe5540f5e8b0226d7d3d5a6eeb5ed'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs