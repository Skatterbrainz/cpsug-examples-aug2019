# Addendum to Demo Notes

## Summary

This document adds one more example for using the .LINK property within comment-based help.

## Example 1 - Function Comment using .LINK Property

This example is taken from the Invoke-DsMaintenance function within the module 
[ds-utils](https://github.com/Skatterbrainz/ds-utils/blob/master/)

```powershell
<#
.SYNOPSIS
    Run Maintenance Tasks
.DESCRIPTION
    Run Ds-Utils Maintenance Tasks
.PARAMETER Update
    All, Modules, Windows, Packages...
    * Modules = PowerShell modules
    * Windows = Windows Updates
    * Packages = Chocolatey Packages
    Default = ALL
.PARAMETER ForceReboot
    Initiates a restart upon completion
.PARAMETER ForceUpdate
    Applies the -Force parameter Update-Module
.EXAMPLE
    Invoke-DsMaintenance -Update Modules
    Updates PowerShell modules only
.EXAMPLE
    Invoke-DsMaintenance -ForceReboot
    Runs all update tasks and forces a restart at the end
.EXAMPLE
    Invoke-DsMaintenance -ForceUpdate
    Runs all update tasks with -Force applied to module updates
.NOTES
    Module AZ may display errors if the current shell has active references to Az.Accounts cmdlets
.LINK
    https://github.com/Skatterbrainz/ds-utils/blob/master/docs/Invoke-DsMaintenance.md
#>
```

To demonstrate this, load the module and type the following:

```powershell
Get-Help Invoke-DsMaintenance -Online
```

You should see the URL from the .LINK property opened in your default web browser.
