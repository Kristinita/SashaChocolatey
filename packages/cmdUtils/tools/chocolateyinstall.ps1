$ErrorActionPreference = 'Stop';

$packageName = 'CmdUtils'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'http://www.maddogsw.com/cmdutils/cmdutils.zip'
$url64       = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  checksum        = 'C7DC42196EE1B7B8FE6FC6CC92D48774DF1F7A90A793A6EA1BC90D14BA224987'
  checksumType    = 'sha256'
  checksum64      = ''
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
