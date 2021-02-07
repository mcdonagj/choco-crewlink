$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/ottomated/CrewLink/releases/download/v1.1.4/CrewLink-Setup-1.1.4.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64
  softwareName  = 'CrewLink 1.1.4'
  checksum      = 'A78970DC4D1156157872D59E9B9A0051'
  checksumType  = 'md5'
  checksum64    = '56E55536AFF7699AEE174944961ABB2531DA66E41E2BD3CE803F3444A170A7B0'
  checksumType64= 'sha256'
  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs