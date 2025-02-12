# devstuff

Config files for my Neovim, Zsh, and other development tools and utilities.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Homebrew](#homebrew)
- [Configuration](#configuration)
- [Contributing](#contributing)
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
   git clone https://github.com/bedamaurice/devstuff.git
   cd devstuff

2. UbuntuOS:
   ```sh
   ./install.sh

## Homebrew and Iterm2 for MacOS
To install the configuration from the offical repository https://brew.sh/

1. Install Homebrew with the offical script:
   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

2. Neovim install with Homebrew:
   https://formulae.brew.sh/formula/neovim
   ```sh
   brew install neovim

3. Install iterm2
   https://iterm2.com/downloads.html
   ```sh
   brew install --cask iterm2

4. Copy iterm2 Profile
   ```sh
   cp ./iterm2/toky_style.json ~/toky_style.json

5. iterm2 > settings > Other actions > Import Profile-JSON

## Zsh configuration

1. Use the script:
   ```sh
   ./config_zsh.sh

2. Reload the shell
   ```sh
   source ~/.zshrc

