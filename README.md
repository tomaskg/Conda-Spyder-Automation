## Disclaimer

⚠ **Please note that this script currently only supports Linux.**

Work is currently underway to make the script compatible with macOS and Windows operating systems. Once the script is updated to support additional platforms, instructions for running it on macOS and Windows will be provided.

In the meantime, if you have access to a Linux machine, you can still use this script to install and set up the environment with Spyder.

If you encounter any issues or have any questions, feel free to open an issue in this repository. We appreciate your feedback as we work towards broader platform compatibility.

To use this script, follow these steps:

1. Save the script in a file named `install_spyder.sh`.
2. Open a terminal and navigate to the directory where you saved the script.
3. Give the script execute permission: `chmod +x install_spyder.sh`.
4. Run the script: `./install_spyder.sh`.

After the script finishes, you can open a new terminal and use the `spy` command to run Spyder.

## To-Do Checklist

- [ ] Make the script compatible with macOS and Windows operating systems.
- [ ] Implement advanced error handling to gracefully handle potential issues during installation.
- [x] Add user input functionality to allow customization of the environment name and alias.
- [x] Provide preset default values for the environment name and alias, allowing users to press enter to accept the defaults.
- [ ] Test the script thoroughly on both macOS and Windows platforms to ensure compatibility and functionality.
- [ ] Document any required dependencies or additional setup steps in the README file.
- [ ] Include error handling to handle cases where the PATH variable is not set or cannot be modified.
