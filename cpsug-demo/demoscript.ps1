<#
.SYNOPSIS
Demonstrates the use of Get-Help with a powershell script

.DESCRIPTION
Demonstrates the use of Get-Help with a powershell script

.PARAMETER FirstName
First name of user

.PARAMETER Order
Order by which to concatenate names: Forward or Reverse (default: Forward)
Forward returns FirstName LastName
Reverse returns LastName, FirstName

.EXAMPLE
.\demoscript.ps1 -FirstName "John"

.NOTES
Check out: https://github.com/Skatterbrainz/cpsug-examples-aug2019
#>
param (
    [parameter(Mandatory, HelpMessage="First name")] [string] $FirstName
)

Write-Output "doing something for $FirstName"
