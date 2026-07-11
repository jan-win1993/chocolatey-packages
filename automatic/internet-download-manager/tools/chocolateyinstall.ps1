$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName

  url           = 'http://mirror2.internetdownloadmanager.com/idman643build5.exe'
  checksum      = '0ed6e7e1615b7a21f83803f5bca81e3c0918b72fdb113977dc2ae9da60b2de0a'
  checksumType  = 'sha256'

  silentArgs	= "/skipdlgs"
}

Install-ChocolateyPackage @packageArgs
