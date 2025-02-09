#!/bin/sh

echo "Do you want the zsh as default shell? (y=yes)"
read dshell

if [ $dshell = "y" ]; then 
    echo "zsh will your default shell"
    sudo chsh -s "$(which zsh)" "$USER"
    if [ $? -eq 0 ]; then
        echo "The default shell has been changed to zsh. Please log out and log back in for the changes to take effect."
    else
        echo "Failed to change the default shell to zsh."
    fi
    echo "You want change the .zshrc config? (y=yes)"
    read ch_zshrc
    if [ $ch_zshrc = "y" ]; then
        mv $HOME/.zshrc $HOME/.zshrc.bak
        cp ./zsh/.zshrc $HOME/.zshrc
        if [ -f $HOME/.zshrc ];then
            echo ".zshrc is now in your home folder"
            echo "## Plugins are here:" >> $Home/.zshrc
        else
            echo "no .zshrc was found in your homefolder"
        fi
    fi
    echo "You want to use the alias-zsh? (y=yes)"
    read al_zshrc
    if [ $al_zshrc = "y" ]; then
        mkdir -p ~/.zsh
        cp ./zsh/zsh-alias/zsh-alias.zsh ~/.zsh/zsh-alias/zsh-alias.zsh
        echo source $HOME/.zsh/zsh-alias/zsh-alias.zsh >> ~/.zshrc
    fi
    echo "You want plugins like zsh-autosuggestions and syntax-higlighting?"
    read zplugin
    if [ $zplugin = "y" ]; then
        mkdir -p ~/.zsh
        git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
        echo source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc
        P_auto='~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh'
        if [ -f $P_auto ]; then
            echo "zsh-autosugesstions was installed successful"
        else
            echo "File zsh-autosugesstion.zsh was not found"
        fi
        exec git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
        echo source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> ~/.zshrc
        P_high='~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
        if [ -f $P_auto ]; then
            echo "zsh-highlighting was installed successful"
        else
            echo "File zsh-highlighting.zsh not found"
        fi
        echo "##Plugins ends here" >> $HOME/.zshrc
    fi
fi

