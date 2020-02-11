# Remote-Logoff

This PowerShell script queries a remote Windows computer for the session ID of a particular user and attempts to log that user off.
The script will accept a hostname or an IP address as the 'ComputerName'.



## Examples 
Log a user 'Admin-Bob' off of a Windows machine 'Server42'
```
.\remote-logoff.ps1 -ComputerName Server42 -UserName Admin-Bob
```


### Prerequisites
You will need administrator credentials to the remote machine and to be on the same domain (if applicable).
This script uses a WMI call to check if it can log out the specified user.


## Authors

* **Andrew Ferguson** - *Initial work* - (https://github.com/aeferguson)

## License


This project is licensed under the [GNU-GPLv3](https://www.gnu.org/licenses/gpl-3.0) License - see the [LICENSE.md](LICENSE.md) file for details\
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

based on question here:
(https://social.technet.microsoft.com/Forums/windows/en-US/16f3aaf9-7333-45d8-a311-3c9fde494e31/logoff-a-specific-user-powershell-script?forum=ITCG)
