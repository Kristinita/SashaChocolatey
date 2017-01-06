$ErrorActionPreference = 'Stop';

$packageName= 'Jumpshare'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://d21hi1or3tbtjm.cloudfront.net/desktop/windows/JumpshareInstaller-2.0.9.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Jumpshare*'

  checksum      = 'DBE17A25C6FE8E60662FF18502752CB7F2D780E1AE91928F4C4D41CE627FDEFE'
  checksumType  = 'sha256'
  checksum64    = 'DBE17A25C6FE8E60662FF18502752CB7F2D780E1AE91928F4C4D41CE627FDEFE'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
