$ErrorActionPreference = 'Stop';

$packageName= 'ViDi-DC'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://dvorkin.by/downloads/ViDi-DC_setup.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'ViDi-DC*'

  checksum      = 'D2EFD37E1C0B39476C25E824CC4B4FCB36EE759F987952B1F26CE0FD3FB1527E'
  checksumType  = 'sha256'
  checksum64    = 'D2EFD37E1C0B39476C25E824CC4B4FCB36EE759F987952B1F26CE0FD3FB1527E'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
