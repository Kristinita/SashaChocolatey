$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Advanced Regedit'
# Don't forget specify protocol for URL's!
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://downloads.sourceforge.net/project/regedt33/regedt33/0.14d/regedt33.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'

  url           = $url
  url64bit      = $url64

}

Install-ChocolateyPath $packageArgs $toolsDir
