$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Vale'
# Don't forget specify protocol for URL's!
$url         = 'https://github.com/errata-ai/vale/releases/download/v1.7.1/vale.msi'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'msi'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = '60EA68100D3AA7DD7A05440360D1BB4B54DCABDFC7FCBA953E1C524C81960969'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= ''

  ######
  # MSI
  ######
  # Remove msiexec.exe, filename and /i argument from USSF for silentArgs value. For example, if USSF show «msiexec.exe /i "PowerResizerSetup.msi" /qb», insert in SilentArgs «/qb».
  ######

  silentArgs   = '/qb'
}

Install-ChocolateyPackage @packageArgs
