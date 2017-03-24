$ErrorActionPreference = 'Stop';

$packageName = 'SopCast'
$toolsDir    = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url         = 'https://github.com/Kristinita/SashaChocolatey/raw/master/exe/SopCast/Setup-SopCast-4.2.0-2016-5-26.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 4 or 1223, program will be still installed with success.
  validExitCodes = (0, 4)

  checksum      = '174E7CE19D419780C196B76730985CE3177004C232BFEB39E9E9D2CEEAB5E18B'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

}

# AutoHotkey
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "sopcast.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id


Install-ChocolateyPackage @packageArgs
