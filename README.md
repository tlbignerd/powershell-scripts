# powershell-scripts

Useful PowerShell scripts I've used across development and general Windows activities to add command line flexibility.

These are very basic, and generally should be used as a baseline for additional improvement.

## Start-Search

Executes a search using the default browser.

### Usage

Copy the [Start-Search](./Modules/Start-Search/) folder to your local `/Documents/PowerShell/Modules/` folder.

In `Mocrosoft.PowerShell_profile.ps1` add:

```powershell
Import-Module Start-Search
```

Restart PowerShell.
