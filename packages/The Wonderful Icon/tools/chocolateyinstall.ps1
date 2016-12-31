$ErrorActionPreference = 'Stop';

$packageName= 'the-wonderful-icon'
$toolsDir   = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$url        = 'http://www.thewonderfulicon.com/wondicon.exe'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = $url

  silentArgs = "" # Silent installation discussion: https://veracrypt.codeplex.com/discussions/579539

  softwareName  = 'The Wonderful Icon*'
  checksum      = 'F0FA07670E28C97E68D8397ABB9ABA05DDB92A6B060705EBF57C20F822E86E16'
  checksumType  = 'sha256'
}

#Thanks to dtgm and the GitHub package for ideas.
$ahkExe = 'AutoHotKey'
$ahkFile = Join-Path $toolsDir "the-wonderful-iconInstall.ahk"
$ahkProc = Start-Process -FilePath $ahkExe `
                         -ArgumentList $ahkFile `
                         -PassThru

$ahkId = $ahkProc.Id
Write-Debug "$ahkExe start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "Process ID:`t$ahkId"

Install-ChocolateyPackage @packageArgs