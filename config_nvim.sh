#!bin/sh

## Configure Neovim
echo "Do you want configure neovim wit vim-plug as pluginmanager? (y=yes)"
read Neovim_config
if [ $Neovim_config = "y" ];then
    sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    mkdir -p $HOME/.config/nvim/lua
    cp -r ./neovim/lua $HOME/.config/nvim/
    mv $HOME/.config/nvim/init.lua $HOME/.config/nvim/init.lua.bak
    cp ./neovim/init.lua $HOME/.config/nvim/init.lua
    nvim +PluginInstall +qall
fi


