$ErrorActionPreference = 'Stop';

$packageName = 'MEGAsync'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://mega.nz/MEGAsyncSetup.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '1A09A281EAB406B353514F71B4D83178E7820915DDD9978AA75F89A0E01F9B11'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

}

$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "mega.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id

Install-ChocolateyPackage @packageArgs
