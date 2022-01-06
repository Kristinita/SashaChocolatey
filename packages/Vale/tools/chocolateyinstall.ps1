$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.13.0/vale_2.13.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '43c031b7661579f3c8b4b1ca7eef9edbbab4530bc082091209c613746d735293'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
