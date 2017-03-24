$ErrorActionPreference = 'Stop';

$packageName = 'SopCast'
$toolsDir    = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url         = 'https://github.com/Kristinita/KristinitaTest/raw/master/exe/Setup-SopCast-4.2.0-2016-5-26.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '174E7CE19D419780C196B76730985CE3177004C232BFEB39E9E9D2CEEAB5E18B'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  ######
  # EXE
  ######
  # silentArgs   = '/S'           # NSIS
  # silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  # silentArgs   = '/s'           # InstallShield
  # silentArgs   = '/s /v"/qn"'   # InstallShield with MSI. Yes, use "quotes" after «v» and «qn», it is not typos.
  # silentArgs   = '/s'           # Wise InstallMaster
  # silentArgs   = '-s'           # Squirrel
  # silentArgs   = '-q'           # Install4j
  # silentArgs   = '-s -u'        # Ghost

}

# AutoHotkey
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "sopcast.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id


Install-ChocolateyPackage @packageArgs
