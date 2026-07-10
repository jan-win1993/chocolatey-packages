$ErrorActionPreference = 'Stop';

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName

  url           = 'http://mirror2.internetdownloadmanager.com/idman643build3.exe'
  checksum      = 'bb32a3db73be1d33bcdb77504d0d024fa38b75ce8ee869c2ba5bea9cff3f5df8'
  checksumType  = 'sha256'

  silentArgs	= "/skipdlgs"
}

Install-ChocolateyPackage @packageArgs
