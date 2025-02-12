#!/bin/sh
CONFIG_FILE=$HOME/.config/nvim/init.lua
## Configure Neovim
echo "Do you want configure neovim with vim-plug as pluginmanager and some lua configs? (y=yes)"
read Neovim_config
if [ $Neovim_config = "y" ];then
    # install vim-plug pluginmanager for neovim
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    # make directory for the lua configuration
    mkdir -p $HOME/.config/nvim/lua
    cp -r ./neovim/lua $HOME/.config/nvim/

    #save and move the init.lua to the directory
    if [ -f $CONFIG_FILE ]; then
        echo "rename the old configfile $CONFIG_FILE to $CONFIG_FILE.bak file"
        mv $CONFIG_FILE $CONFIG_FILE.bak
    else
        echo "configfile init.lua will created.."
    cp ./neovim/init.lua $CONFIG_FILE
    fi

    # Run Neovim in headless mode and execute PlugInstall command
    nvim -es -u "$CONFIG_FILE" -i NONE -c "PlugInstall" -c "qa"
else
    exit 1
fi


