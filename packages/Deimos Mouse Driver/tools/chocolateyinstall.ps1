$ErrorActionPreference = 'Stop';

$packageName= 'Deimos Mouse Driver'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://www1.canyon.eu/files/downloads/drivers/cnd-sgm4n.zip'
$url64      = ''

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  url           = $url
  url64bit      = $url64

  softwareName  = 'Deimos Mouse Driver*'

  checksum        = '8F6987E23C20F7764D309F7F6E2FE334374F6BB4D39EF23E806CE7396F31BFFF'
  checksumType    = 'sha256'
  checksum64      = '8F6987E23C20F7764D309F7F6E2FE334374F6BB4D39EF23E806CE7396F31BFFF'
  checksumType64  = 'sha256'

}

Install-ChocolateyZipPackage @packageArgs
