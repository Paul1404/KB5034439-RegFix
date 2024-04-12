# Windows Registry Update Tools 🛠️

This repository contains scripts and tools for updating the Windows Registry to address specific configuration needs. It includes a PowerShell script and a Windows Registry file (.reg) for easy deployment and management of registry changes.

## Contents 📁

* `AddRegistryKey.ps1`: A PowerShell script for adding a registry key with error handling, logging, and administrative checks.
* `UpdateWinREVersion.reg`: A .reg file to update the `WinREVersion` registry key to a specified value.

## Getting Started 🚀

### Prerequisites

* Windows operating system
* Administrative privileges are required to run these tools, as they modify the Windows Registry.

## Quick Start with PowerShell One-Liner 🚀

For users who are familiar with our repository and have verified its security, we provide a convenient PowerShell one-liner method to directly execute the script. This approach allows you to quickly run the script without manually downloading it.

### How to Use the PowerShell One-Liner

1. **Open PowerShell as Administrator**: This script requires administrative privileges. Right-click on the PowerShell icon and choose "Run as Administrator".
    
2. **Execute the Script**: Copy and paste the following command into your PowerShell terminal:
    
    ```powershell
    irm https://raw.githubusercontent.com/Paul1404/KB5034439-RegFix/main/AddRegistryKey.ps1 | iex
    ```
    

### Important Security Notice ⚠️

* **Verify the Repository**: Before executing the one-liner, ensure that you are accessing the correct and trusted GitHub repository. Only run scripts that come from sources you trust.
    
* **Review the Script**: Although you trust the source, it's a good practice to review the contents of any script before executing it to understand the changes it will make.
    
* **Execution Policy**: Your system's PowerShell execution policy may prevent the script from running. You can check your current policy with `Get-ExecutionPolicy` and change it if necessary using `Set-ExecutionPolicy`, for example, `Set-ExecutionPolicy RemoteSigned`. Please be aware that changing the execution policy should be done with a thorough understanding of the security implications.
    

This method is designed for ease of use and efficiency but always prioritize the security of your systems when executing scripts.

* * *

### Using the PowerShell Script

1. **Clone the Repository**: Download the script directly or clone this repository to your local machine.
2. **Run PowerShell as Administrator**: Right-click on PowerShell and select "Run as Administrator".
3. **Execute the Script**: Navigate to the script’s directory and run:
    
    ```
    .\AddRegistryKey.ps1
    ```
    
    This will execute the script with the default parameters. You can also specify parameters directly.

### Using the .reg File

1. **Download the .reg File**: Locate `UpdateWinREVersion.reg` in this repository and download it to your local machine.
2. **Run the .reg File**: Double-click the .reg file and confirm that you want to make changes to your registry when prompted.

## Features 🌟

* **PowerShell Script**: Robust error handling, administrative checks, and logging to ensure safe and traceable registry changes.
* **.reg File**: Easy-to-use registry update with a double-click, suitable for quick deployments.

## Contributing 🤝

Contributions are welcome! Please feel free to submit pull requests or create issues for bugs, questions, and new feature requests.

## License 📄

This project is licensed under the MIT License - see the LICENSE file for details.

## Support 💬

If you need help or have any queries, please open an issue in the repository.

## Safety Notice ⚠️

Please take a backup of your system's registry and create a system restore point before running these tools, to ensure that you can revert to a previous state if necessary.

* * *
