function Invoke-DemoFunction {
    <#
    .SYNOPSIS
    Demonstrates the use of Get-Help with custom module functions

    .DESCRIPTION
    Demonstrates the use of Get-Help with custom module functions, yes, I already said that.

    .PARAMETER FirstName
    First name of user

    .PARAMETER LastName
    Last name of user

    .PARAMETER Order
    Order by which to concatenate names: Forward or Reverse (default: Forward)
    Forward returns FirstName LastName
    Reverse returns LastName, FirstName

    .EXAMPLE
    Invoke-DemoFunction -FirstName "John" -LastName "Smith"

    .NOTES
    Check out: https://github.com/Skatterbrainz/cpsug-examples-aug2019
    #>
    [CmdletBinding()]
    param (
        [parameter(Mandatory, HelpMessage="First Name")] [ValidateNotNullOrEmpty()] [string] $FirstName,
        [parameter(Mandatory, HelpMessage="Last Name")] [ValidateNotNullOrEmpty()] [string] $LastName,
        [parameter(Mandatory=$False, HelpMessage="Concatenation Order")] [ValidateSet('Forward','Reverse')] [string] $Order = "Forward"
    )
    switch ($Order) {
        'Forward' {
            Write-Output "$FirstName $LastName"
            break
        }
        'Reverse' {
            Write-Output "$LastName, $FirstName"
            break
        }
    }
}