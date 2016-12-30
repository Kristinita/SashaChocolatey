$ErrorActionPreference = 'Stop';

$packageName= 'Karens Replicator'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://dw11.uptodown.com/dwn/72jGodivpWOe-Gd1-e7OXWOe4bErYjRXF5r7RKW_GXrTW313pp78bu1O9KNx45G_W_jfthJ1tgaKQ1bc2TdFTxkavUY8n6duz-3NYT4D5TO1kcfotJ1TUOCRGEMBIJyB/3x985VXzZNgoGR2jPK_0lqQzrFtOwC-FNX9-jmLoLJ3XEQxvmLYZWBqQeR8md7UnxtTJLIZmhbYWHfbGjPOPJNvqG8SkRmbUsss--Jjervc61XIpykV8F7zvmCk9Qha4/EIDAunLJcycxXETFFgu6H39j1cWj24PcT91NS_vgSFzwSqA-_hz4AvCUY7wzWUIiSpZayxE4-XmJTkVxW8mQ-jzTUl5MfA64Pe0M4x4MVpvydLRMt9jGv7GGQagyMDSB/P4n6-AvUXp1IQhVxvP6xGSDLGjTP-5c13InheMqwSDj71UI0jZ1a_QzSnJMYgNNF/karens-replicator-3-6-9-en.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  softwareName  = 'Karens Replicator*'

  checksum      = '7BE33C8F18FBAB747A81CEA66949D1FA8CE4817A407D69702FA2CC8253DC7932'
  checksumType  = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
