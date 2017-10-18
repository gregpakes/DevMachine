# Boxstarter options
$Boxstarter.RebootOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Windows Options
Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
Disable-InternetExplorerESC
Install-WindowsUpdate -AcceptEula

# Windows Features
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All -All -Verbose
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux


# Browsers
cinst GoogleChrome
cinst Firefox

# Utilities
cinst lastpass
cinst fiddler4
cinst resharper-platform
cinst papercut
cinst notepadplusplus 
cinst rdcman

