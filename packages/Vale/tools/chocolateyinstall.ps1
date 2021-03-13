$ErrorActionPreference = 'Stop';

$packageName = 'Vale'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/errata-ai/vale/releases/download/v2.10.0/vale_2.10.0_Windows_amd64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url64bit      = $url64

  checksum64      = 'd3823315a718aab913fabf1490253534dbb2a7cd5d0ff8ea72dce9e9d40dcc65'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs