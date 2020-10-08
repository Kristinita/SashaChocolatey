$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.4.2/vale_2.4.2_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'eaca6eabe7531d8d52a85e6cd0ae5f7868c218d7715c2944a4defa19d2b38c7a'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs