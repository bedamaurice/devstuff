#!/bin/sh
# Check the operating system
os_name=$(uname)

if [ "$os_name" = "Linux" ]; then
#    echo "You are using Linux."
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        echo "You are using $NAME $VERSION"
    elif command -v lsb_release >/dev/null 2>&1; then
        # Use lsb_release command if available
        distro=$(lsb_release -si)
        version=$(lsb_release -sr)
        echo "You are using $distro $version"
    else
        echo "Cannot determine the Linux distribution."
    fi
elif [ "$os_name" = "Darwin" ]; then
    echo "You are using macOS."
elif [ "$os_name" = "CYGWIN" ] || [ "$os_name" = "MINGW" ] || [ "$os_name" = "MSYS" ]; then
    echo "You are using Windows. Exiting script."
    exit 1
else
    echo "Unknown operating system: $os_name"
fi

# Function to log actions
log_action() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1"
}

# install packages with apt
echo "Do you want install zsh, neovim and net-tools with apt (only for Ubuntu)? (y=yes)"
read APT_Install
if [ $APT_Install = "y" ]; then
    # check if apt installed and install neovim, zsh and net-tools
    log_action "Starting package installation script"
#    if ! command -v apt >/dev/null 2>&1; then
#        log_action "apt package manager not found. Exiting."
#        echo "apt package manager is not available on this system."
#        exit 1
#   else
#        # Check if the script is run as root
#        if [ "$(id -u)" -ne 0 ]; then
#            echo "This script must be run as root. Please use sudo."
#            exit 1
#        fi
        # Update package lists
        log_action "Updating package lists"
        sudo apt update -y
        # sudo -u $USER
        # Install packages
        PACKAGES="net-tools zsh neovim fzf"
        log_action "Installing packages: $PACKAGES"
        sudo apt install -y $PACKAGES
        log_action "Package installation complete"
        nvim --version
        zsh --version
        echo "Packages installed successfully."
#    fi
fi

