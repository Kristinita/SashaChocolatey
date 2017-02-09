$ErrorActionPreference = 'Stop';

$packageName = 'SopCast'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://github.com/Kristinita/KristinitaTest/raw/master/exe/Setup-SopCast-4.2.0-2016-5-26.exe'
$url64       = 'https://github.com/Kristinita/KristinitaTest/raw/master/exe/Setup-SopCast-4.2.0-2016-5-26.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '831E32924F756EACB06E757F5812FA9B2F45F5ADC9C794FDF6330935262285E1'
  checksumType  = 'sha256'
  checksum64    = '831E32924F756EACB06E757F5812FA9B2F45F5ADC9C794FDF6330935262285E1'
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

$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "sopcast.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id
Write-Debug "$ahkExe start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "Process ID:`t$ahkId"


Install-ChocolateyPackage @packageArgs
