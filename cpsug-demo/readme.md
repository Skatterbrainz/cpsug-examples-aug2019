# cpsug-demo

## Description

This folder contains a module and a standalone script file (not part of the module).
The purpose of this is to support demonstrating comment-based help for scripts and modules
as part of a user group meeting presentation.

## Usage and Syntax

```powershell
Import-Module .\cpsug-demo.psd1
Get-Command -Module cpsug-demo
# returns one function: Invoke-DemoFunction
Get-Help Invoke-DemoFunction
Get-Help Invoke-DemoFunction -Detailed
Get-Help Invoke-DemoFunction -Examples
```
