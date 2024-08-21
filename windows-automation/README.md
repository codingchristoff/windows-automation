# Required Apps Script

This script runs the winget command to install various packages.

Before running the script set the drive you wish to install to by changing the `$generalInstallPath` variable. Ensure to omit trailing `\`. 

Setting the install location to the `D` drive, should be stored as: `D:`.

Adding new programs to be installed will require the winget package name to be obtained. 

Simply Add a new function call to `InstallApp`.
This requires to arguments:
- `$wingetName` :> this is the `ID` that winget uses to determine the correct package to install.
- `$appName` :> this is what you would like the folder to be called.

### Example:

`InstallApp "Piriform.Ccleaner" "ccleaner"`

This will install "Ccleaner" under `D:\ccleaner`.
