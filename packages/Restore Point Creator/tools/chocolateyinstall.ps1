$ErrorActionPreference = 'Stop';

# Insert here full correct name of program, not Chocolatey package name. For example, correct «Performance Maintainer», not «pername».
$packageName = 'Restore Point Creator'
# Don't forget specify protocol for URL's!
$url         = 'https://www.toms-world.org/release/Install%20Restore%20Point%20Creator.exe'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName

  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  # If exit code — 1223, program will be still installed with success.
  validExitCodes = (0, 1223)

  checksum      = 'D62F9D392C76D3847A01F3EEFF83CC94A436310EC81F2FBB8A7DDB727B600C38'
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
