[Parameter(Mandatory=$true)]
param($PackageName)

$here = Split-Path $MyInvocation.MyCommand.Definition
$nuget_spec = Join-Path $here "${PackageName}/${PackageName}.nuspec"

[xml]$n = Get-Content ${nuget_spec}
$version = $n.package.metadata.version

choco pack ${nuget_spec}
choco push ${PackageName}.${version}.nupkg --source https://push.chocolatey.org/
