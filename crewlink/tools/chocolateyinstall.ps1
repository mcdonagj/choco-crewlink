$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ottomated/CrewLink/releases/download/v2.0.0/CrewLink-Setup-2.0.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'CrewLink 2.0.0'
  checksum      = '4ED5492A7E7B0EC6C1DF852886A42943'
  checksumType  = 'md5'
  checksum64    = '5429D2CD7D3FB9FF08D15BF13DAD5FC212BD0FF5F849D18425BC55FA0F0AF27C'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs