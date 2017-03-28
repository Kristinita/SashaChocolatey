$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Preme for Windows'
$toolsDir    = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
# Don't forget specify protocol for URL's!
$url         = 'https://onedrive.live.com/?authkey=%21ANbD8usstHuc65Q&id=A8F7B003962BA969%21177&cid=A8F7B003962BA969'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = '2677527A3D53F842A5D79EC699E0361227A76241469319B14C234C50544A60D9'
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