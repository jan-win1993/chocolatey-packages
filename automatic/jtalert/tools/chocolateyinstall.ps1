$packageArgs = @{
  packageName  = $env:ChocolateyPackageName

  url          = 'https://dnl.hamapps.com/JTAlert/8fd16f1777381053130b84549b372e8e'
  checksum     = '4316d7542216e767126aacff5e859a5323fc21ebae41217bd81b1ddc8303c43b'
  checksumType = 'sha256'

  silentArgs   = '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- /components=""'
}

Install-ChocolateyPackage @packageArgs
