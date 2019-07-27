# cpsug-examples-aug2019
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

## PowerShell Documentation

### Benefits

* Explain how things work, examples, etc.
* More professional looking
* Supports automated documentation

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
Get-Help MyFunction

## example using DbaTools...

PS C:\> Get-Help Get-DbaMaxMemory

NAME
    Get-DbaMaxMemory

SYNOPSIS
    Gets the 'Max Server Memory' configuration setting and the memory of the server.  Works on SQL Server 2000-2014.


SYNTAX
    Get-DbaMaxMemory [-SqlInstance] <Sqlcollaborative.Dbatools.Parameter.DbaInstanceParameter[]> [[-SqlCredential]
    <Pscredential>] [-EnableException <Switch>] [<CommonParameters>]


DESCRIPTION
    This command retrieves the SQL Server 'Max Server Memory' configuration setting as well as the total physical
    installed on the server.

    Results are turned in megabytes (MB).


RELATED LINKS
    https://dbatools.io/Get-DbaMaxMemory

REMARKS
    To see the examples, type: "get-help Get-DbaMaxMemory -examples".
    For more information, type: "get-help Get-DbaMaxMemory -detailed".
    For technical information, type: "get-help Get-DbaMaxMemory -full".
    For online help, type: "get-help Get-DbaMaxMemory -online"

```

### Functions

### Modules

### Markdown Coolness
