$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.15.4/vale_2.15.4_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = '5c29301f1c953ded48fc3daefa25e27596098665769ecf3900f9c133c2a743f0'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
