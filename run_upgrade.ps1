param
(
    [Parameter(Mandatory=$true)]
    [string] $PackageName
)

$here = Split-Path $MyInvocation.MyCommand.Definition
$nuget_spec = Join-Path $here "${PackageName}/${PackageName}.nuspec"

choco pack ${nuget_spec}
choco upgrade --force --yes --pre --source "$here;http://chocolatey.org/api/v2/" $PackageName
