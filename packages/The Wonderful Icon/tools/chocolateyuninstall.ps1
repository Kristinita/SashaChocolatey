$packageName = "the-wonderful-icon"
$fileType = "exe"
$args = "/u"

$is64bit = Get-ProcessorBits 64

if ($is64bit) {
  $setupExePath = (Get-ItemProperty HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\VeraCrypt).UninstallString.split('"')[1]
}
else {
  $setupExePath = (Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\VeraCrypt).UninstallString.split('"')[1]
}

#Thanks to dtgm and the GitHub package for ideas.
$scriptPath = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$ahkFile = Join-Path $scriptPath "veracryptUninstall.ahk"
$ahkRun = "$Env:Temp\$(Get-Random).ahk"

Copy-Item $ahkFile "$ahkRun" -Force
$ahkProc = Start-Process -FilePath 'AutoHotKey' `
             -ArgumentList $ahkRun `
             -PassThru
Write-Debug "$ahkRun start time:`t$($ahkProc.StartTime.ToShortTimeString())"
Write-Debug "$ahkRun process ID:`t$($ahkProc.Id)"

Uninstall-ChocolateyPackage $packageName $fileType $args $setupExePath

Remove-Item "$ahkRun" -Force