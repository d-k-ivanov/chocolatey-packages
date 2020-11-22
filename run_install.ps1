[Parameter(Mandatory=$true)]
param($PackageName)

$here = Split-Path $MyInvocation.MyCommand.Definition
$nuget_spec = Join-Path $here "${PackageName}/${PackageName}.nuspec"

choco pack ${nuget_spec}
choco install --force --yes --pre --source "$here;http://chocolatey.org/api/v2/" $PackageName
