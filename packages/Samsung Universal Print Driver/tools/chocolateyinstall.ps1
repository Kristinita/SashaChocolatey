$ErrorActionPreference = 'Stop';

$packageName = 'Samsung Universal Print Driver'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'http://org.downloadcenter.samsung.com/downloadfile/ContentsFile.aspx?CDSite=UNI_RU&CttFileID=5968879&CDCttType=DR&ModelType=N&ModelName=ML-1865W&VPath=DR/201502/20150203160821258/SamsungUniversalPrintDriver2.exe'
$url64       = 'http://org.downloadcenter.samsung.com/downloadfile/ContentsFile.aspx?CDSite=UNI_RU&CttFileID=5968879&CDCttType=DR&ModelType=N&ModelName=ML-1865W&VPath=DR/201502/20150203160821258/SamsungUniversalPrintDriver2.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  checksum      = '003E6B0863CDB2B651B966E74E76B54B6B1137BA272589CB35FB5C39B2DF28B3'
  checksumType  = 'sha256'
  checksum64    = '003E6B0863CDB2B651B966E74E76B54B6B1137BA272589CB35FB5C39B2DF28B3'
  checksumType64= 'sha256'

  ######
  # EXE
  ######
  # silentArgs   = '/S'           # NSIS
  # silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-' # Inno Setup
  # silentArgs   = '/s'           # InstallShield
  # silentArgs   = '/s /v"/qn"'   # InstallShield with MSI. Yes, use "quotes" after «v» and «qn», it is not typos.
  # silentArgs   = '/s'           # Wise InstallMaster
  # silentArgs   = '-s'           # Squirrel
  # silentArgs   = '-q'           # Install4j
  # silentArgs   = '-s -u'        # Ghost

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
