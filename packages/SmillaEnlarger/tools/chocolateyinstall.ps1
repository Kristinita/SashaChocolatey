$ErrorActionPreference = 'Stop';

$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyZipPackage -PackageName 'SmillaEnlarger' -Url 'http://downloads.sourceforge.net/project/imageenlarger/imageenlarger/SmillaEnlarger%20Release%200.9.0/SmillaEnlarger-0.9.0.zip' -UnzipLocation $toolsDir
