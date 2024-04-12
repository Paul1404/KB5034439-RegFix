# Windows Registry Update Tools 🛠️

This repository contains scripts and tools for updating the Windows Registry to address specific configuration needs. It includes a PowerShell script and a Windows Registry file (.reg) for easy deployment and management of registry changes.

## Contents 📁

* `AddRegistryKey.ps1`: A PowerShell script for adding a registry key with error handling, logging, and administrative checks.
* `UpdateWinREVersion.reg`: A .reg file to update the `WinREVersion` registry key to a specified value.

## Getting Started 🚀

### Prerequisites

* Windows operating system
* Administrative privileges are required to run these tools, as they modify the Windows Registry.

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
