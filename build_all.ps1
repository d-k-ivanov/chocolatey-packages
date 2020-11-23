$CurrentDirectory = Split-Path $MyInvocation.MyCommand.Definition
$CliPath = Join-Path $CurrentDirectory 'cli.ps1'
Get-ChildItem -Directory -Path "${here}" | ForEach-Object { & $CliPath build ${_} }
