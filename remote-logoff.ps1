# A script for prompting for a server and username and then trying steps to log that user out of the server.
Param (

        [parameter(ValueFromPipeline=$True)]
        [string[]]$ComputerName,$UserName

    )
$ErrorActionPreference = 'Stop';
$error.clear()

try {
  Get-WmiObject -ComputerName $ComputerName -Class win32_OperatingSystem | Out-Null
}
catch {
  Write-Warning -Message "Computer $ComputerName offline or not responding";
}
if (!$error) {
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