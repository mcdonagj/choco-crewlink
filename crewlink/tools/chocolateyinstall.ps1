$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ottomated/CrewLink/releases/download/v1.2.0/CrewLink-Setup-1.2.0.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'CrewLink 1.2.0'
  checksum      = '354C786CFAAD5757D66F938C576E2AD9'
  checksumType  = 'md5'
  checksum64    = 'BF976BB8204E77F79AEEC46854B577721CF20AC03CE33D69933C2B26827D5FCE'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs