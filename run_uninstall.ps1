[Parameter(Mandatory=$true)]
param($PackageName)
choco uninstall --force --yes $PackageName
