# Apply this snippet for unpacking portable programs into 7z and zip files.
$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'mpg123'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'https://www.mpg123.de/download/win32/1.24.0/mpg123-1.24.0-static-x86.zip'
$url64       = 'https://www.mpg123.de/download/win64/1.24.0/mpg123-1.24.0-static-x86-64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  url           = $url
  url64bit      = $url64

  checksum        = 'C0F74CE130075F8D544B3EAD85535508AB239B855C16F54FDD74CD17571D559F'
  checksumType    = 'sha256'
  checksum64      = '0E6ACF7EFB930AA10693FCAFCC1D4A02BE82C1E46A5CF77D2908809D7325BC2D'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs