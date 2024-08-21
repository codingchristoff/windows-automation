<#
.SYNOPSIS
    This script runs the winget command to install various packages.
.VERSION
    1.1.0
.AUTHOR
    Christopher Lowe
.DATE
    21/08/2024
#>

$utilityPath = "D:"
$codingToolsPath = "P:"

function InstallApp($wingetName, $appName, $installPath) {
    $appFilePath = $("$installPath\$appName")
    VerifyAndCreateDir($appFilePath)
    Install $wingetName $appFilePath
}

function Install($wingetName, $appFilePath) {
    winget install $wingetName --Location $appFilePath
}
function VerifyAndCreateDir($appFilePath) {
    if (-not ([System.IO.Directory]::Exists($appFilePath))) {
        New-Item -Path $appFilePath -Type Directory
    }    
}

## Set program installs here.
InstallApp "Piriform.CCleaner" "ccleaner" $utilityPath
InstallApp "Discord.Discord" "discord" $utilityPath