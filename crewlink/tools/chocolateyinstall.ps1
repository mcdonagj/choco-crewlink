$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ottomated/CrewLink/releases/download/v1.0.0/CrewLink-Setup-1.0.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'CrewLink 1.0.0'
  checksum      = '8548d94b9ae4cf502be623ddcf894713'
  checksumType  = 'md5'
  checksum64    = '4bf57eb8eace1636c95178c3abb4d110e224e50b0af9b3ae94f4bc5d842fafef'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs