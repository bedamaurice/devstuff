#!/bin/sh

# Check the operating system
os_name=$(uname)

if [ "$os_name" = "Linux" ]; then
    echo "You are using Linux."
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
















## Install vim plug for neovim
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
