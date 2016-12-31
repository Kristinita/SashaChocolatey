$ErrorActionPreference = 'Stop';

$packageName= 'MEGAsync'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://mega.nz/MEGAsyncSetup.exe'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'MEGAsync*'

  checksum      = '48960A3110630227C8F70E9A4472357B0A8304931021B19F766DB56CDAD2FFB9'
  checksumType  = 'sha256'
  checksum64    = '48960A3110630227C8F70E9A4472357B0A8304931021B19F766DB56CDAD2FFB9'
  checksumType64= 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
