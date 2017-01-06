$ErrorActionPreference = 'Stop';

$packageName= 'SmillaEnlarger'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://downloads.sourceforge.net/project/imageenlarger/imageenlarger/SmillaEnlarger%20Release%200.9.0/SmillaEnlarger-0.9.0.zip'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  softwareName  = 'SmillaEnlarger*'

  checksum        = '4DC30ED6CFA0FB3DE4F49A660DC9B3B505FDDCB2F9FEAC4F9212230FC91FEAA7'
  checksumType    = 'sha256'
  checksum64      = '4DC30ED6CFA0FB3DE4F49A660DC9B3B505FDDCB2F9FEAC4F9212230FC91FEAA7'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
