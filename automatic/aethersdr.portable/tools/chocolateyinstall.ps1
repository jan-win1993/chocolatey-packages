$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Remove-Item -Path "$toolsDir\*.exe" -ErrorAction SilentlyContinue

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  destination   = "$toolsDir"
  file64      = "$toolsDir\AetherSDR-v26.7.1-Windows-x64-portable.zip"
}

Get-ChocolateyUnzip @packageArgs
Remove-Item $packageArgs.file
    
# Install start menu shortcuts
$programs = [environment]::GetFolderPath([environment+specialfolder]::Programs)

$shortcutFilePath = Join-Path $programs 'AetherSDR.lnk'
$targetPath       = Join-Path $toolsDir 'AetherSDR.exe'
Install-ChocolateyShortcut -shortcutFilePath $shortcutFilePath -targetPath $targetPath