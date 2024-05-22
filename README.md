# palit_gpu_light_bat
Change GPU color for Palit 4060/4070/4080/4090 and Kill ThunderMaster

## How It Works

- **Automatic Start and Stop**: This script ensures that ThunderMaster starts automatically at Windows startup, applies your configured color settings, and then closes after 10 seconds. This allows you to use ThunderMaster for setting colors without it running continuously, which helps avoid conflicts with other tools like MSI Afterburner.


## Prerequisites

- ThunderMaster installed

## Setup Instructions

1. **Install ThunderMaster**

   - Download and install ThunderMaster from the official website.
   - During the installation process, uncheck the option to start ThunderMaster automatically with Windows.

2. **Configure ThunderMaster**

   - Open ThunderMaster.
   - Navigate to the Color settings and select your desired color options.
   - Close ThunderMaster.

3. **Download the Batch File**
   
   Download the `setup_tasks.bat` file from this repository to your PC

4. **Run the Batch File**

   To set up the scheduled tasks, follow these steps:

   1. Right-click on the `setup_tasks.bat` file and select `Run as administrator`. This ensures that the script has the necessary permissions to create and configure the scheduled tasks.

   2. The script will create the following:
      - A scheduled task folder named `Bloatware_Palit`.
      - A task named `RUN_ThunderMaster` that runs ThunderMaster at logon, hidden and with highest privileges.
      - A task named `KILL_ThunderMaster` that kills ThunderMaster 10 seconds after logon, hidden and with highest privileges.
      - A batch file named `kill_thunder_master.bat` in the ThunderMaster installation directory to kill the ThunderMaster process.
