$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Gramblr'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
# Don't forget specify protocol for URL's!
$url         = 'http://gramblr.com/gramblr2_win32.zip'
$url64       = 'http://gramblr.com/gramblr2_win64.zip'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir

  url           = $url
  url64bit      = $url64

  checksum        = '10BFF8BC7389BC0D3E83DEE4C49D6B7C547920D12D765D30C6CCA4CD34D3B25A'
  checksumType    = 'sha256'
  checksum64      = 'D03FCD0AA33D9C67EA17B0C9AB46B9A10FECC12C933A93977AC1F48D0730176F'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
