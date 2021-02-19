$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ottomated/CrewLink/releases/download/v1.2.1/CrewLink-Setup-1.2.1.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'CrewLink 1.2.1'
  checksum      = 'F965348AC20FBECB79950A3F30737B05'
  checksumType  = 'md5'
  checksum64    = '0C0FF091DAC843C5B8656CB9DBAE1800A23380F878E8E60B032C074148DFF36E'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs