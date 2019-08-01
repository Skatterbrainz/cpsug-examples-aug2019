---
external help file: cpsug-demo-help.xml
Module Name: cpsug-demo
online version:
schema: 2.0.0
---

# Invoke-DemoFunction

## SYNOPSIS
Demonstrates the use of Get-Help with custom module functions

## SYNTAX

```
Invoke-DemoFunction [-FirstName] <String> [-LastName] <String> [[-Order] <String>] [<CommonParameters>]
```

## DESCRIPTION
Demonstrates the use of Get-Help with custom module functions, yes, I already said that.

## EXAMPLES

### EXAMPLE 1
```
Invoke-DemoFunction -FirstName "John" -LastName "Smith"
```

Returns "John Smith"

### EXAMPLE 2
```
Invoke-DemoFunction -FirstName "John" -LastName "Smith" -Order Reverse
```

Returns "Smith, John"

## PARAMETERS

### -FirstName
First name of user

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -LastName
Last name of user

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: True
Position: 2
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -Order
Order by which to concatenate names: Forward or Reverse (default: Forward)
Forward returns FirstName LastName
Reverse returns LastName, FirstName

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: Forward
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
Check out: https://github.com/Skatterbrainz/cpsug-examples-aug2019

## RELATED LINKS
