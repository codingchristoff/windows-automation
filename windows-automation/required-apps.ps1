<#
.SYNOPSIS
    This script runs the winget command to install various packages.
.VERSION
    1.0.0
.AUTHOR
    Christopher Lowe
.DATE
    21/08/2024
#>

$generalInstallPath = "D:"

function InstallApp($wingetName, $appName) {
    $appFilePath = $("$generalInstallPath\$appName")
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
InstallApp "Piriform.CCleaner" "ccleaner"