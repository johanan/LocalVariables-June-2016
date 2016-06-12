$PSScriptRoot = Split-Path -Parent -Path $MyInvocation.MyCommand.Definition

$less = $PSScriptRoot + "\Theme\beacon.less" 
$css = $PSScriptRoot + "\Content\css\LocalVariablesTheme.css"

& "lessc" $less $css