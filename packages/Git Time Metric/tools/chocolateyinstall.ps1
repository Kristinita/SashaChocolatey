$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Git Time Metric'
$toolsDir    = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
# Don't forget specify protocol for URL's!
$url         = 'https://github.com/git-time-metric/gtm/releases/download/1.2.7/gtm-1.2.7-windows-installer.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = '6AB10967EC37D24F18BB56CE96907A1D310F3CB22CA336BAE8978572B2C96E00'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

}

# AutoHotkey
$ahkExe = 'AutoHotkey'
$ahkFile = Join-Path $toolsDir "gtm-install.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id

Install-ChocolateyPackage @packageArgs
