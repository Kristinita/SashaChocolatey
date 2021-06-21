$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.10.4/vale_2.10.4_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'f4b7069508950a5834aaa97bb30389bac2fdc4d3e8925a13ea29b7343dfb0049'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs