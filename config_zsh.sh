#!/bin/sh
#variables
ZSHRC_CONFIG=$HOME/.zshrc

echo "Do you want the zsh as default shell? (y=yes)"
read dshell

if [ $dshell = "y" ]; then 
    echo "zsh will your default shell"
    sudo chsh -s "$(which zsh)" $USER
    if [ $? -eq 0 ]; then
        echo "The default shell has been changed to zsh. Please log out and log back in for the changes to take effect."
    else
        echo "Failed to change the default shell to zsh."
    fi
    echo "You want change the .zshrc config? (y=yes)"
    read ch_zshrc
    if [ $ch_zshrc = "y" ]; then
        if [ -f $ZSHRC_CONFIG ];then     
            mv $ZSHRC_CONFIG $ZSHRC_CONFIG.bak
        fi
        cp ./zsh/.zshrc $HOME/.zshrc
        mkdir -p $HOME/.zsh
        if [ -f $ZSHRC_CONFIG ];then
            echo ".zshrc is now in your home folder"
            echo "## Plugins are here:" >> $ZSHRC_CONFIG
        else
            echo "no .zshrc was found in your homefolder"
        fi
    fi
    echo "You want to use the alias-zsh? (y=yes)"
    read al_zshrc
    if [ $al_zshrc = "y" ]; then
        mkdir -p $HOME/.zsh/zsh-alias
        cp ./zsh/zsh-alias/zsh-alias.zsh $HOME/.zsh/zsh-alias/zsh-alias.zsh
        echo source $HOME/.zsh/zsh-alias/zsh-alias.zsh >> ~/.zshrc
    fi
fi

