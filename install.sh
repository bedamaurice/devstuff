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
        # Install packages
        PACKAGES="net-tools zsh neovim"
        log_action "Installing packages: $PACKAGES"
        sudo apt install -y $PACKAGES
        log_action "Package installation complete"
        nvim --version
        #zsh --version
        echo "Packages installed successfully."
#    fi
fi

## Zsh as default shell and any plugins install
echo "Do you want the zsh as default shell? (y=yes)"
read dshell

if [ $dshell = "y" ];then 
    echo "zsh will your default shell"
    if ! command -v zsh &>/dev/null;then
        echo "Zsh is not installed. Please install it manually."
    else 
        USER=$(whoami)
        sudo chsh -s $(which zsh) $USER
#        exec zsh
    fi
    echo $SHELL "is your default shell"
    echo "You want change the .zshrc config? (y=yes)"
    read ch_zshrc
    if [ $ch_zshrc = "y" ]; then
        cp ./zsh/.zshrc $HOME/.zshrc
        if [ -f $HOME/.zshrc];then
            echo ".zshrc is now in your home folder"
            echo "## Plugins are here:" >> $Home/.zshrc
        else
            echo "no .zshrc was found in your homefolder"
        fi
    fi
    echo "You want to use the alias-zsh? (y=yes)"
    read al_zshrc
    if [ $al_zshrc = "y" ];then
        cp ./zsh/zsh-alias.zsh ~/.zsh/zsh-alias.zsh
        echo source $HOME/.zsh/zsh-alias/zsh-alias.zsh >> ~/.zshrc
    fi
    echo "You want plugins like zsh-autosuggestions and syntax-higlighting?"
    read zplugin
    if [ $zplugin = "y"];then
        mkdir -p ~/.zsh
        git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
        echo source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc
        P_auto='~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh'
        if [ -f $P_auto ];then
            echo "zsh-autosugesstions was installed successful"
        else
            echo "File zsh-autosugesstion.zsh was not found"
        fi
        exec git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
        echo source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> ~/.zshrc
        P_high='~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
        if [ -f $P_auto ];then
            echo "zsh-highlighting was installed successful"
        else
            echo "File zsh-highlighting.zsh not found"
        fi
        echo "##Plugins ends here" >> $HOME/.zshrc
    fi
fi

## Configure Neovim
echo "Do you want configure neovim wit vim-plug as pluginmanager? (y=yes)"
read Neovim_config
if [ $Neovim_config = "y" ];then
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    mkdir -p $HOME/.config/nvim/lua
    cp -r ./neovim/lua $HOME/.config/nvim/lua
    cp ./neovim/init.lua $HOME/.config/nvim/init.lua
    nvim +PluginInstall +qall
fi

