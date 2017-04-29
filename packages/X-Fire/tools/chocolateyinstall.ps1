# Apply this snippet for unpacking portable programs into 7z and zip files.
$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'X-Fire'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'Paste here correct download URL'
$url64       = 'Paste here correct download URL for 64-bit Windows. If for 32-bit and 64-bit Windows have one installation file, do not write anything here'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  url           = $url
  url64bit      = $url64

  checksum        = '6C83251DFA0FEB664EE8DC0C340E9383C177C7D12CB367A994311C936F233EEA'
  checksumType    = 'sha256'
  checksum64      = ''
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs