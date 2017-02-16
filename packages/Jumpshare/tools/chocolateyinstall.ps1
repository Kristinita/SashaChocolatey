$ErrorActionPreference = 'Stop';

$packageName= 'Jumpshare'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://d21hi1or3tbtjm.cloudfront.net/desktop/windows/JumpshareInstaller-2.0.10.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'Jumpshare*'

  checksum      = 'D2C408437D4706EF797E8976C7C20FD9276958D8AA8BA90021A9C5124E5DCB91'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
