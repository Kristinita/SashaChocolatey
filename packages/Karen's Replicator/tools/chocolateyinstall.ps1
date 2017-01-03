$ErrorActionPreference = 'Stop';

$packageName= 'Karens Replicator'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$tempUrl = 'https://karens-replicator.en.uptodown.com/windows'
$WebClient = New-Object System.Net.WebClient
$pageSource = $WebClient.DownloadString($tempurl)
$pageSource -match "<a target=`"_blank`" href=`"(.*)`" rel=`"nofollow`""
$url = $matches[1]

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Karens Replicator*'
  checksum        = '7BE33C8F18FBAB747A81CEA66949D1FA8CE4817A407D69702FA2CC8253DC7932'
  checksumType    = 'sha256'
  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
