# choco-crewlink

Chocolatey package for released versions of [CrewLink](https://github.com/ottomated/CrewLink).

## Version upgrade checklist

- [ ] nuspec: update `version` tag.
- [ ] nuspec: update `release notes` tag.
- [ ] chocolateyinstall.ps1: update `$url` and `$url64`
- [ ] chocolateyinstall.ps1: update the `checksum` and `checksum64`
	- `"c:\ProgramData\chocolatey\tools\checksum.exe" <crewLink.exe> -t=sha256`
	- The checksum `-t` depends on what you have specified in your `checksumType`

## Installation Instructions

- Install [chocolatey](https://chocolatey.org/install)
- From command line `choco install crewlink`

## Dev Instructions

- Always pack after making any changes:
- `choco pack`

### Testing regular version

- `choco install crewlink -dv -s .`
- `choco uninstall crewlink -dv -s .`

### Pushing changes

- `choco apikey --key <key> --source https://push.chocolatey.org` 
- `choco push <package> --source https://push.chocolatey.org` 
