$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file        = "$toolsDir\[[File]]"
  file64      = "$toolsDir\AetherSDR-v26.7.1-Windows-x64-setup.exe"
  silentArgs  = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
}

Install-ChocolateyInstallPackage @packageArgs