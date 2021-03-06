# choco-crewlink

Chocolatey package for released versions of [CrewLink](https://github.com/ottomated/CrewLink).

## Version upgrade checklist

- [ ] `crewlink.nuspec`: Update `version` tag.
- [ ] `crewlink.nuspec`: Update `release notes` tag.
- [ ] `chocolateyinstall.ps1`: Update `$url` and `$url64`.
- [ ] `chocolateyinstall.ps1`: Update `$packageArgs` attribute: `softwareName`.
- [ ] `chocolateyinstall.ps1`: Update binary `checksum` and `checksum64`.
- Note: `"c:\ProgramData\chocolatey\tools\checksum.exe" <crewLink.exe> -t=sha256`.
- The checksum `-t` depends on what you have specified in your `checksumType`.

## Installation Instructions

- Install Chocolatey, see: <https://chocolatey.org/install>
- Using `cmd` or `powershell`: `choco install crewlink`

## Development Instructions

- Bundle the package after making any changes using:
- `choco pack crewlink/crewlink.nuspec`

### Test Instructions

- Test package install: `choco install crewlink -dv -s .`
- Test package uninstall: `choco uninstall crewlink -dv -s .`

### Pushing Changes

- `choco apikey --key <key> --source https://push.chocolatey.org`
- `choco push <package> --source https://push.chocolatey.org`
