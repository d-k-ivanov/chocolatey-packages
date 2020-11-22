param
(
    [Parameter(Mandatory=$true)]
    [string] $PackageName
)
choco uninstall --force --yes $PackageName
