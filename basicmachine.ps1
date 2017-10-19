# Boxstarter options
$Boxstarter.RebootOk=$true # Allow reboots?
$Boxstarter.NoPassword=$false # Is this a machine with no login password?
$Boxstarter.AutoLogin=$true # Save my password securely and auto-login after a reboot

# Windows Options
#Set-ExplorerOptions -showHidenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions
#Disable-InternetExplorerESC
#Install-WindowsUpdate -AcceptEula

# Windows Features
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All -All -Verbose
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName containers -All 

# IIS
Enable-WindowsOptionalFeature -FeatureName "IIS-WebServerRole" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-ISAPIExtensions" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-ASP" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-HttpCompressionStatic" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-HttpCompressionDynamic" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-DefaultDocument" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-HttpErrors" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-HttpLogging" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-ASPNET45" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-ApplicationInit" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-WebSockets" -Online -All -NoRestart
Enable-WindowsOptionalFeature -FeatureName "IIS-WebServerManagementTools" -Online -All -NoRestart

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
cinst visualstudiocode
cinst docker


