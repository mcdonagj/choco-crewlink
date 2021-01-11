$ErrorActionPreference = 'Stop';
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'CrewLink 1.0.0'
  fileType      = 'exe'
  validExitCodes= @(0, 3010, 1605, 1614, 1641)
}

$uninstalled = $false
Uninstall-ChocolateyPackage @packageArgs