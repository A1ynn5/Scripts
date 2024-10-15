## Disables required services
DISM /Online /Disable-Feature /FeatureName:Microsoft-Hyper-V-All /All
DISM /Online /Disable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /All
DISM /Online /Disable-Feature /FeatureName:HypervisorPlatform /All
DISM /Online /Disable-Feature /FeatureName:VirtualMachinePlatform /All

## Enables the services we just got rid of
DISM /Online /Enable-Feature /FeatureName:Microsoft-Hyper-V-All /All
DISM /Online /Enable-Feature /FeatureName:Microsoft-Windows-Subsystem-Linux /All
DISM /Online /Enable-Feature /FeatureName:HypervisorPlatform /All
DISM /Online /Enable-Feature /FeatureName:VirtualMachinePlatform /All

## Automatic restart
shutdown /r /t 10 /f /d p:2:16
