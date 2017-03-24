$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Robust Audio Converter Extractor Max'
# Don't forget specify protocol for URL's!
$url         = 'http://s02.mydiv-downloads.net/download/aHR0cDovL3NvZnQubXlkaXYubmV0L3dpbi9kb3dubG9hZC1BdWRpby1Db252ZXJ0ZXItRXh0cmFjdG9yLU1heC5odG1s/d1699/58d563d5dceb2/soft/dfiles/ru/win/Audio-Converter-Extractor-Max/214342/rax.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = '10814019E58E28CF0B6ED776C9B40AA1E6B2F4B202BB01A4898C1D667F5CB914'
  checksumType  = 'sha256'
  checksum64    = ''
  checksumType64= 'sha256'

  ######
  # EXE
  ######
  # silentArgs   = '/S'           # NSIS
  # silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  # silentArgs   = '/s'           # InstallShield
  # silentArgs   = '/s /v"/qn"'   # InstallShield with MSI. Yes, use "quotes" after «v» and «qn», it not typos.
  # silentArgs   = '/s'           # Wise InstallMaster
  # silentArgs   = '-s'           # Squirrel
  # silentArgs   = '-q'           # Install4j
  # silentArgs   = '-s -u'        # Ghost

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
}

Install-ChocolateyPackage @packageArgs
