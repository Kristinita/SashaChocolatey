$ErrorActionPreference = 'Stop';
$packageName		   = '4K Stogram'
$toolsDir  			   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dl.4kdownload.com/app/4kstogram_2.7.3.msi?source=chocolatey'
$url64      = 'https://dl.4kdownload.com/app/4kstogram_2.7.3_x64.msi?source=chocolatey'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = '4K Stogram*'

  checksum      = '22800ee03f54d249ef5eed1fa4298345b42b09e5efa98b4d2e7473465bb0f341'
  checksumType  = 'sha256'
  checksum64    = '21d47632a2222ee92dd8ad2e14a1d4544335a800900e3324313a55ad1acf5a24'
  checksumType64= 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
