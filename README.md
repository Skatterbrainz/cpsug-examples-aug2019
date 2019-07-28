# PowerShell Documentation: Comment-Based Help

## cpsug-examples-aug2019

Charlotte PowerShell User Group meeting presentation - Aug 1, 2019

https://www.meetup.com/Charlotte-PowerShell-Users-Group/events/nqdwkpyzlbcb/

## 1 - Details (From Meetup.com)

Join us as David Stein of Catapult Systems shares with us some of the scripts and tools he has developed. We'll start off with our new speaker challenge to tell us about their favorite cmdlet and why. Then we'll move into some of the goodness David has used. Could be a little bit of everything. Documenting PowerShell scripts and generating markdown files using Platyps or building a library of SQL queries as stored files and using PowerShell to run them and return results for processing. It's going to be great!

We will have a Teams meeting available for remote attendees for this meeting.

What we'll do
Join us for a evening of learning PowerShell. Our typical evening is:
6:00 pm - Pizza and Networking
6:30 pm - Favorite PowerShell Cmdlet followed by more presentation and demos - We are informal and love you to bring questions and comments

### What to bring

* Laptop - We provide the wireless

## 2 - Benefits of Comment-Based Help (and Comments in General)

* Explain functions, parameters, inputs and outputs, provide examples, etc.
* More professional looking
* Supports automated documentation

More info: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-6

## 3 - General format: Scripts

Usually placed at the top of the script file.

```powershell
#requires statements go up here...
<#
.SYNOPSIS

.DESCRIPTION

.PARAMETER MyParam

.PARAMETER YourParam

.EXAMPLE

#>

# script code goes down here...
```

#### In Action

Display help for a module function:

```powershell
PS C:\> Get-Help Invoke-DemoFunction
```

Display help for a script:

```powershell
Get-Help demoscript.ps1
```

#### More Options for Get-Help

Show all the options and parameters for Get-Help:

```powershell
Get-Help Get-Help -Detailed
```

_Examples_

```powershell
Get-Help Invoke-DemoFunction -Examples
```

## 4 - General Format: Functions / HelpMessage and Comments

HelpMessage for Parameters

```powershell
function Invoke-DemoFunction {
  param (
    [parameter(Mandatory, HelpMessage="First name of user")]
    [string] $FirstName
  )
  #...code...
}
```

Help embedded in function definition

```powershell
function Invoke-DemoFunction {
  <#
  .SYNOPSIS
  ...more...
  #>
  param ()
  #...code...
}
```

Help inserted just above function definition:

```powershell
<#
.SYNOPSIS
...more...
#>
function Invoke-DemoFunction {
  param ()
  #...code...
}
```

## 5 - Markdown Coolness with Modules

You can automatically generate markdown documentation from any PowerShell module using the PlatyPS module function New-MarkdownHelp (use Get-Command -Module PlatyPS for more functions)

Install PlatyPS:

```powershell
Install-Module PlatyPS
```

### Extract Module Comments to Markdown Files:

Syntax:

```powershell
New-MarkdownHelp -Module <name> -OutputFoler <path> <-Force>
```

Example:

```powershell
New-MarkdownHelp -Module CMHealthCheck -OutputFolder c:\git\cmhealthcheck\docs -Force
```

View example output: https://github.com/Skatterbrainz/CMHealthCheck/blob/master/Docs/Export-CMHealthReport.md

## 6 - Summary

* Comment-based Help is great for making sure things are used properly
* Helps avoid helpdesk calls
* Allows for automated documentation / publishing
* It looks more professional

## 7 - Questions
