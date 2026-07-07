$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName  = $env:ChocolateyPackageName

  url          = 'https://download2.gridtracker.org/GridTracker2-2.260705.2-setup.exe'
  checksum     = 'ff30e091da59c478e5de7662d625c18708a2e2720ba32faa0f8800f6f3a76d29'
  checksumType = 'sha256'

  silentArgs   = '/S'
}

Install-ChocolateyPackage @packageArgs
