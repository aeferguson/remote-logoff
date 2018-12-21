# A script for prompting for a server and username and then trying steps to log that user out of the server.

Param (

    [parameter(ValueFromPipeline=$True)]
    [string[]]$ComputerName,$UserName

)

$SessionId = ((quser /server:$ComputerName | Where-Object { $_ -match $UserName }) -split ' +')[3]
<#

The above command queries the server which was input and returns the session ID
You can return other values such as Session Name, State, Idle Time, and Logon Time

#>

Write-host "User '$UserName' will be logged off, are you sure you want to proceed?"
$ynResult = Read-Host "y / n"
Switch($ynResult)
{
    Y {Write-Host "Attempting to logoff '$UserName'"; logoff $SessionId /server:$ComputerName}
    N {Write-Host "Exiting doing nothing..."; Start-Sleep -s 1}
    Default {Write-Host "Exiting doing nothing..."; Start-Sleep -s 1}
}
