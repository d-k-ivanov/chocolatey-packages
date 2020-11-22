[Parameter(Mandatory=$true)]
param($PackageName)

$here = Split-Path $MyInvocation.MyCommand.Definition
$nuget_spec = Join-Path $here "${PackageName}/${PackageName}.nuspec"

choco pack ${nuget_spec}
choco push ${PackageName}*.nupkg --source https://push.chocolatey.org/
