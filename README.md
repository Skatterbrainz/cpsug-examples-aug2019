# PowerShell Documentation: Comment-Based Help

## cpsug-examples-aug2019

Charlotte PowerShell User Group meeting presentation - Aug 1, 2019
https://www.meetup.com/Charlotte-PowerShell-Users-Group/events/nqdwkpyzlbcb/

## Details (From Meetup.com)

Join us as David Stein of Catapult Systems shares with us some of the scripts and tools he has developed. We'll start off with our new speaker challenge to tell us about their favorite cmdlet and why. Then we'll move into some of the goodness David has used. Could be a little bit of everything. Documenting PowerShell scripts and generating markdown files using Platyps or building a library of SQL queries as stored files and using PowerShell to run them and return results for processing. It's going to be great!

We will have a Teams meeting available for remote attendees for this meeting.

What we'll do
Join us for a evening of learning PowerShell. Our typical evening is:
6:00 pm - Pizza and Networking
6:30 pm - Favorite PowerShell Cmdlet followed by more presentation and demos - We are informal and love you to bring questions and comments

### What to bring

* Laptop - We provide the wireless

### Benefits

* Explain how things work, examples, etc.
* More professional looking
* Supports automated documentation
* More info: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_comment_based_help?view=powershell-6

### Scripts

Usually placed at the top of the script file.

#### Standard format: 

```powershell
<#
.SYNOPSIS

.DESCRIPTION

.PARAMETER MyParam

.PARAMETER YourParam

.EXAMPLE

#>
```
#### In Action

```powershell
## example using DbaTools (https://dbatools.io or Install-Module dbatools)

PS C:\> Get-Help Get-DbaMaxMemory
PS C:\> Get-Help Export-CMHealthReport -Detailed
```
#### More Options for Get-Help

```powershell
Get-Help Get-Help -Detailed
```

_Examples_

```powershell
Get-Help Get-DbaMaxMemory -Examples
```

### Functions: HelpMessage and Comments

Help embedded in function definition

```powershell
function Invoke-MyFunction {
  <#
  .SYNOPSIS
  ...
  #>
  param ()
  ...
}
```

Help inserted just above function definition

```powershell
<#
.SYNOPSIS
...
#>
function Invoke-MyFunction {
  param ()
  ...
}
```

### Markdown Coolness with Modules

You can automatically generate markdown documentation from any PowerShell module using the PlatyPS module function New-MarkdownHelp (use Get-Command -Module PlatyPS for more functions)

Extract Comments to Markdown Files

```powershell
New-MarkdownHelp -Module <name> -OutputFoler <path>
```
