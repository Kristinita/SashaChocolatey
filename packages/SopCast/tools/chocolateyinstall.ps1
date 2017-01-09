$ErrorActionPreference = 'Stop';

$packageName= 'SopCast'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.sopcast.com/download/SopCast.zip'
$url64      = ''

$chocTempDir = Join-Path $env:TEMP 'chocolatey'
$tempDir = Join-Path $chocTempDir "$packageName"
$installer = Join-Path $tempDir 'Setup-SopCast-4.2.0-2016-5-26.exe'

$UnzipArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = '831E32924F756EACB06E757F5812FA9B2F45F5ADC9C794FDF6330935262285E1'
  checksumType    = 'sha256'
  checksum64      = '831E32924F756EACB06E757F5812FA9B2F45F5ADC9C794FDF6330935262285E1'
  checksumType64  = 'sha256'

}

$InstallArgs =@{
	packageName   = $packageName
	fileType      = 'exe'

	silentArgs   = '/S'

}

Install-ChocolateyZipPackage @UnzipArgs

Install-ChocolateyPackage $installer @InstallArgs

