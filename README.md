# devstuff

Config files for my Neovim, Zsh, and other development tools and utilities.

## config git user.name

```
git config --global user.email "email@example.com"
git config --global user.name "Name"

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Homebrew](#homebrew)
- [Zsh-configuration](#Zsh-configuration)
- [Neovim-configuration](#Neovim-configuration)
- [Docker-configuration](#Docker-configuration)
- [License](#license)

## Introduction
This repository contains configuration files for various development tools and utilities. It includes settings for Neovim, Zsh, and other tools that I use to streamline my development workflow.

## Features
- Custom Neovim configuration for an enhanced coding experience.
- Zsh configuration with useful aliases and functions.
- Configuration files for other tools and utilities.

## Installation
To install the configurations from this repository, follow these steps:

1. Clone the repository:
   ```sh
   git clone https://github.com/bedamaurice/devstuff
   cd devstuff
    ```
2. UbuntuOS:
   ```sh
   ./install.sh
    ```
## Homebrew and Iterm2 for MacOS
To install the configuration from the offical repository https://brew.sh/

1. Install Homebrew with the offical script:
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
2. Neovim install with Homebrew:
   https://formulae.brew.sh/formula/neovim
   ```sh
   brew install neovim
   ```
3. Install iterm2
   https://iterm2.com/downloads.html
   ```sh
   brew install --cask iterm2
   ```
<!--
4. Copy iterm2 Profile
   ```sh
   cp ./iterm2/toky_style.json ~/toky_style.json
   ```
   -->
5. iterm2 > settings > Other actions > Import Profile-JSON

6. Install nerdfont https://github.com/ryanoasis/nerd-fonts
   ```sh
   brew install font-hack-nerd-font
   ```

## Zsh-configuration

1. Use the script:
   ```sh
   ./config_zsh.sh
    ```
2. Reload the shell:
   ```sh
   source ~/.zshrc
   ```
## Zsh plugins

1. Plugin zsh-highlighting:
   ```sh
   git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
   echo source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >> ~/.zshrc
   ```

2. Plugin zsh-autosuggestions:
   ```sh
   git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
   echo source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh >> ~/.zshrc
   ```

## Neovim-configuration

1. Use the script:
   ```sh
   ./config_nvim.sh
    ```
2. Open nvim:
   ```sh
   nvim
    ```
3. Install Nvim-plugin:
   ```sh
   :PlugInstall
   ```
   now quit nvim

4. Reload Nvim:
   ```sh
   source ~/.config/nvim/init.lua
   ```
5. Open nvim without failures:
   ```sh
   nvim
   ```
## Docker-configuration

1. Install docker.io & compose-v2:
   ```sh
   ./docker_install.sh
    ```
2. User permissions to the current user:
   ```sh
   sudo usermod -aG docker $USER
    ```
    reboot now

3. Check docker installation:
   ```sh
   docker run hello-world
   ```
   


