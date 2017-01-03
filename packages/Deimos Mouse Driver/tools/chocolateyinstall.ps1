$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'Deimos Mouse Driver' -Url 'http://www1.canyon.eu/files/downloads/drivers/cnd-sgm4n.zip' -UnzipLocation $toolsDir
