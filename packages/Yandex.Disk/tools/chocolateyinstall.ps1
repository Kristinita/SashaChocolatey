$ErrorActionPreference = 'Stop';

$packageName = 'yandex'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url         = 'https://downloader-default13e.disk.yandex.net/rshare/aece741fc5f8f0e99dc493c281fe4ec2d4207945cb7ac89db1a3f26e060531e2/587e178e/WZQWplMauwfDTpsiUzi2gvygxRU4iADPBSC-w2c6Ud46VomVXfVzCVnO_QzCZLkPK2791o173D8aVHLGwoo4hBCu6DsN6EYwR7jDLiSUoser8npumZHI4midPdWhecNq?uid=0&filename=YandexDiskSetupEn.exe&disposition=attachment&hash=&limit=0&content_type=application%2Fx-msdownload&fsize=1671560&hid=6a2fc5d2558ef92fbbe7df714f096f92&media_type=executable&tknv=v2&etag=60b23b2b425ef9c6ef856c8d618860f9&rtoken=GFGzTI3EqQB1&force_default=no&ycrid=na-9201b2df9aa608c229ccc03dfd712fa6-downloader2h'
$url64       = 'https://downloader-default13e.disk.yandex.net/rshare/aece741fc5f8f0e99dc493c281fe4ec2d4207945cb7ac89db1a3f26e060531e2/587e178e/WZQWplMauwfDTpsiUzi2gvygxRU4iADPBSC-w2c6Ud46VomVXfVzCVnO_QzCZLkPK2791o173D8aVHLGwoo4hBCu6DsN6EYwR7jDLiSUoser8npumZHI4midPdWhecNq?uid=0&filename=YandexDiskSetupEn.exe&disposition=attachment&hash=&limit=0&content_type=application%2Fx-msdownload&fsize=1671560&hid=6a2fc5d2558ef92fbbe7df714f096f92&media_type=executable&tknv=v2&etag=60b23b2b425ef9c6ef856c8d618860f9&rtoken=GFGzTI3EqQB1&force_default=no&ycrid=na-9201b2df9aa608c229ccc03dfd712fa6-downloader2h'

$packageArgs = @{
  packageName    = $packageName
  unzipLocation  = $toolsDir
  fileType       = 'exe'
  url            = $url
  url64bit       = $url64

  checksum       = 'ADB5247377B73AFC7A46725D19A81CEE87F0D78E02C1D5624A32303D648BE639'
  checksumType   = 'sha256'
  checksum64     = 'ADB5247377B73AFC7A46725D19A81CEE87F0D78E02C1D5624A32303D648BE639'
  checksumType64 = 'sha256'

}

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

Install-ChocolateyPackage @packageArgs
