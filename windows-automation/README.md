# Required Apps Script

This script runs the winget command to install various packages.

Before running the scripts set the drive options to suit your needs. This can be done by changing the `$<name>Path` variables. You can add more or remove them should you wish. Remebering to omit trailing `\`. 

Adding new programs to be installed will require the winget package name to be obtained. 

Simply Add a new function call to `InstallApp`.
This requires the following arguments:
- `$wingetName` :> this is the `ID` that winget uses to determine the correct package to install.
- `$appName` :> this is what you would like the directory to be called that the program is installed into.
- `$<name>Path` :> this is the variable you use to determine the install path.

### Example:

```
$utilityPath = "U:"
$gamePath = "G:"

InstallApp "Piriform.Ccleaner" "ccleaner" $utilityPath

```

This will install "Ccleaner" under `U:\ccleaner`.
