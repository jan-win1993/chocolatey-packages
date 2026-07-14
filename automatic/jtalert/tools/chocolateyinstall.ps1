$packageArgs = @{
  packageName  = $env:ChocolateyPackageName

  url          = 'https://dnl.hamapps.com/JTAlert/793d9c95028fa1804da03195da6878f1'
  checksum     = 'a8a59623117deb67ff45a594a0bb444649b7b01a0773a3008f51189e3b3f2e84'
  checksumType = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /components=""'
}

Install-ChocolateyPackage @packageArgs
