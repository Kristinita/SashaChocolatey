$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Preme for Windows'
$toolsDir    = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
# Don't forget specify protocol for URL's!
$url         = 'https://github.com/Kristinita/SashaChocolatey/blob/master/exe/Preme%20For%20Windows/premeInstaller.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = 'B88544D18682D085812973C1BB8E3D8278B98DE8D6BDA493F5778C90F4981CF5'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

}

# AutoHotkey
$ahkExe = 'AutoHotkey'
$ahkFile = Join-Path $toolsDir "preme-install.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id

Install-ChocolateyPackage @packageArgs