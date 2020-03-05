
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://vitrite.vanmiddlesworth.org/vitrite/1.1.1/Vitrite-1.1.zip'
$unzipLocation = "$(Join-Path $toolsDir Vitrite)"
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $unzipLocation
  url           = $url
  checksum      = '870BDFDDDB463587B98CCE6269DD5CDA3335CB6004358DCFC226BBC7CA625CC6'
  checksumType  = 'sha256'
}
Install-ChocolateyZipPackage @packageArgs
