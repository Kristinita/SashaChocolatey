$ErrorActionPreference = 'Stop';

$packageName = 'Clipjump'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://github.com/aviaryan/Clipjump/releases/download/v12.5/Clipjump_12.5.zip'
$url64       = 'https://github.com/aviaryan/Clipjump/releases/download/v12.5/Clipjump_12.5_x64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = '13CAC74642F5FFDF0B25F954E494A45A3C3A6346D247AC0005C25963AF500929'
  checksumType    = 'sha256'
  checksum64      = 'D35485D59A053ACA6D93170F3BE3714D005F17DD08D7CEB067BB7058D6BC90EC'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
