$ErrorActionPreference = 'Stop'

$packageArgs = @{
    packageName    = "ms-r-open"
    fileType       = "EXE"
    url            = "https://mran.blob.core.windows.net/install/mro/3.5.3/windows/microsoft-r-open-3.5.3.exe"
    url64bit       = "https://mran.blob.core.windows.net/install/mro/3.5.3/windows/microsoft-r-open-3.5.3.exe"
    checksum       = "A2EF254A63F60234996E6EAFE9686FDDF99B5835732FF52D6AE0F4BCD547D14B"
    checksum64     = "A2EF254A63F60234996E6EAFE9686FDDF99B5835732FF52D6AE0F4BCD547D14B"
    checksumType   = "sha256"
    checksumType64 = "sha256"
    silentArgs     = "/quiet"
    validExitCodes = @(0, 1603, 1626)
    softwareName   = "Microsoft-R-Open"
}

Install-ChocolateyPackage @packageArgs
