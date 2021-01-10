# IMPORTANT: Before releasing this package, copy/paste the next 2 lines into PowerShell to remove all comments from this file:
#   $f='c:\path\to\thisFile.ps1'
#   gc $f | ? {$_ -notmatch "^\s*#"} | % {$_ -replace '(^.*?)\s*?[^``]#.*','$1'} | Out-File $f+".~" -en utf8; mv -fo $f+".~" $f

$ErrorActionPreference = 'Stop';
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'CrewLink 1.2.1'
  fileType      = 'exe'
  #silentArgs    = "/qn /norestart"
  validExitCodes= @(0, 3010, 1605, 1614, 1641)
}

$uninstalled = $false

#[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

Uninstall-ChocolateyPackage @packageArgs