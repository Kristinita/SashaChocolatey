$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.15.0/vale_2.15.0_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '8252a8141a86efb2183bbf7c7c2511fb948378ae59cc53d42d4039363a43cec7'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
