$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = ''
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.2.2/vale_2.2.2_Windows_64-bit.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = ''
  checksumType    = ''
  checksum64      = '63ed5385da45f3fc1001e0295a4fe0d84d3cea192fc03ed92aa06120e8132af6'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs