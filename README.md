# Remote-Logoff

This PowerShell script queries a remote computer for the session ID of a particular user.
It then attempts to log that user off of the computer.

## Examples 
Log a user 'Admin-Bob' off of a Windows machine 'Server42'
```
.\remote-logoff.ps1 -ComputerName "Server42" -UserName "Admin-Bob"
```
### Prerequisites
You will need administrator credentials to the remote machine and to be on the same domain (if applicable)
