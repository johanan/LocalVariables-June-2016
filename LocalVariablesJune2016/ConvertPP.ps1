param (
	[string]$namespace
)

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition

$ignored = @("obj", "bin", "AssemblyInfo")

$toBeChanged = Get-ChildItem $scriptPath -recurse | Where-Object { -not ($_.FullName -match ($ignored -join '|')) } | Where-Object {$_.extension -eq ".cs"}

$toBeChanged | ForEach-Object { Copy-item -Path $_.FullName -Destination ($_.FullName + ".pp") }

$toBeReplaced = Get-ChildItem $scriptPath -recurse | Where-Object { $_.extension -eq ".pp"}

$toBeReplaced | ForEach-Object { 
	Write-Output "Converting $($_.FullName)"
	$replaced = (Get-Content $_.FullName) -replace $namespace, '$rootnamespace$'
	Set-Content -path $_.FullName -value $replaced
}
