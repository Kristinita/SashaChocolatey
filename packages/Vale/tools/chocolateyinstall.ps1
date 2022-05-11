$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.16.2/vale_2.16.2_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '5bf8aa25764eb19dc813a08559b5186aa0c9c93fa47eda3494b7b95c2b9f3005'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
