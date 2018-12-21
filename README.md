# Remote-Logoff

This PowerShell script queries a remote computer for the session ID of a particular user and attempts to log that user off.
This script will accept a hostname or an IP address as the 'ComputerName'.


## Examples 
Log a user 'Admin-Bob' off of a Windows machine 'Server42'
```
.\remote-logoff.ps1 -ComputerName Server42 -UserName Admin-Bob
```
### Prerequisites
You will need administrator credentials to the remote machine and to be on the same domain (if applicable).


## Authors

* **Andrew Ferguson** - *Initial work* - (https://github.com/aeferguson)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
