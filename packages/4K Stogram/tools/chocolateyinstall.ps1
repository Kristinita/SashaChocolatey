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

  checksum      = '27B59F853F6AE7EBCE8186DB46F5850A820586BB35A7155899A80200DC506BBD'
  checksumType  = 'sha256'
  checksum64    = '27B59F853F6AE7EBCE8186DB46F5850A820586BB35A7155899A80200DC506BBD'
  checksumType64= 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
