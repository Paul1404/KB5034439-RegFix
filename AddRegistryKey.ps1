<#
.SYNOPSIS
    Adds or updates a registry key with specified value.
.DESCRIPTION
    This script adds or updates a registry key in the Windows Registry. It is designed to be run with administrative privileges.
    It includes error handling, verification of the operation, and logs the results to a file in the script's execution directory.
.PARAMETER keyPath
    The registry key path where the value should be added or updated.
.PARAMETER valueName
    The name of the registry value to be added or updated.
.PARAMETER data
    The data to be set for the registry value.
.EXAMPLE
    .\AddRegistryKey.ps1 -keyPath "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" -valueName "WinREVersion" -data "10.0.20348.2201"
.NOTES
    Ensure the script is run as an Administrator to modify registry keys.
#>

param (
    [string]$keyPath = "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion",
    [string]$valueName = "WinREVersion",
    [string]$data = "10.0.20348.2201"
)

# Function to check if the script is run as Administrator
function Test-IsAdmin {
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    $currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
}

# Check if running as Administrator
if (-not (Test-IsAdmin)) {
    Write-Host "This script must be run as Administrator." -ForegroundColor Red
    exit
}

# Log file location set to the script's execution directory
$logFile = Join-Path $PSScriptRoot "RegistryChangeLog.log"

function Add-RegistryKey {
    param($keyPath, $valueName, $data, $logFile)

    try {
        # Command to add the registry key
        $command = "reg add `"$keyPath`" /f /v $valueName /t REG_SZ /d `"$data`""
        Invoke-Expression $command
        
        # Verify the key was added successfully
        $verify = Get-ItemProperty -Path $keyPath -Name $valueName
        if ($verify.$valueName -eq $data) {
            Add-Content -Path $logFile -Value "[$(Get-Date)] - SUCCESS: Registry key `$valueName` updated to `$data`."
            Write-Host "Registry key added successfully."
        } else {
            throw "Verification failed: Key value does not match `$data`."
        }
    } catch {
        Add-Content -Path $logFile -Value "[$(Get-Date)] - ERROR: Failed to add registry key `$valueName`. Error: $_"
        Write-Host "Error encountered: $_"
    }
}

# Execute the function
Add-RegistryKey -keyPath $keyPath -valueName $valueName -data $data -logFile $logFile
