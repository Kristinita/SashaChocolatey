$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.15.2/vale_2.15.2_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'bde6b99a897df4674c127509ab176930fe8eabe41a4a5fe2985a3d8e8c44285a'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
