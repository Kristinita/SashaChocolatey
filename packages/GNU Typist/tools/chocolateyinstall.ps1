$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'GNU Typist'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'http://ftp.gnu.org/gnu/gtypist/w32_binaries/gtypist-2.9.5-w32.7z'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  url           = $url
  url64bit      = $url64

  checksum        = '8F3A021833ACC81BA9291062C91C956F88EBB4D9225B9A955CB8B60CD6CDB0D3'
  checksumType    = 'sha256'
  checksum64      = ''
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
