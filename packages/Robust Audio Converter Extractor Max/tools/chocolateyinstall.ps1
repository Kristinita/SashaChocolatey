$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Robust Audio Converter Extractor Max'
# Don't forget specify protocol for URL's!
$url         = 'https://github.com/Kristinita/SashaChocolatey/blob/master/exe/Robust%20Audio%20Converter%20Extractor%20Max/rax.exe?raw=true'
# $url64       = 'Paste here correct download URL for 64-bit Windows. If for 32-bit and 64-bit Windows you have one installation file, remove or comment this line'

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = '10814019E58E28CF0B6ED776C9B40AA1E6B2F4B202BB01A4898C1D667F5CB914'
  checksumType  = 'sha256'
  # checksum64    = 'Paste here correct SHA256 checksum for 64-bit exe file. If for 32-bit and 64-bit Windows you have one installation file, remove or comment this line.'
  # checksumType64= 'If for 32-bit and 64-bit Windows you have one installation file, remove or comment this line.'

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
