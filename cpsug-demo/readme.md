# cpsug-demo

## Description

This folder contains a module and a standalone script file (not part of the module).
The purpose of this is to support demonstrating comment-based help for scripts and modules
as part of a user group meeting presentation.

## Usage and Syntax: Module

```powershell
Import-Module .\cpsug-demo.psd1
Get-Command -Module cpsug-demo
# returns one function: Invoke-DemoFunction
Get-Help Invoke-DemoFunction
Get-Help Invoke-DemoFunction -Detailed
Get-Help Invoke-DemoFunction -Examples
```

## Usage and Syntax: Script

```powershell
Get-Help .\demoscript.ps1
Get-Help .\demoscript.ps1 -Detailed
Get-Help .\demoscript.ps1 -Examples
```

## Disclaimer

All source code and supporting data herein are provided "AS-IS", without any warranty or guarantee of any kind for any purpose or usage whatsoever, in any country, locality, planetary system, galaxy or universe.

* USE AT YOUR OWN RISK
