﻿# A script for prompting for a server and username and then trying steps to log that user out of the server.
Param (

        [parameter(ValueFromPipeline=$True)]
        [string[]]$ComputerName,$UserName

    )
$ErrorActionPreference = 'Stop';
try
{
  $SessionId = ((quser /server:$ComputerName | Where-Object { $_ -match $UserName }) -split ' +')[3]
  Write-host "User '$UserName' will be logged off, are you sure you want to proceed?"
  $ynResult = Read-Host "y / n"
  Switch($ynResult)
    {
        Y {Write-Host "Attempting to logoff '$UserName'"; logoff $SessionId /server:$ComputerName}
        N {Write-Host "Exiting doing nothing..."; Start-Sleep -s 1}
        Default {Write-Host "Exiting doing nothing..."; Start-Sleep -s 1}
    }
}
catch
{
  Write-Warning 'Computer offline or not responding'
}

    
