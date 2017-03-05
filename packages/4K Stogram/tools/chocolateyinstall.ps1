$ErrorActionPreference = 'Stop';

$packageName= '4K Stogram'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://downloads.4kdownload.com/app/4kstogram_2.2.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = '4K Stogram*'

  checksum      = 'AFE3DC6E739AC41F959D47BA4C0322E723CC820786B01B09C82EB6A13C0A6A16'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
