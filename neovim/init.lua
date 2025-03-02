-- ~/.config/nvim/init.lua
--
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Add mainscreen
Plug 'goolord/alpha-nvim'

-- Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
-- Add lualine plugin
Plug 'nvim-lualine/lualine.nvim'

-- Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
-- Golang
Plug('fatih/vim-go', { ['tag'] = '*' })

-- fzf Plugin
Plug('junegunn/fzf', { ['do'] = vim.fn['fzf#install'] })

-- fzf.vim Plugin
Plug 'junegunn/fzf.vim'

-- Nerdtree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

-- Git
Plug 'tpope/vim-fugitive'

vim.call('plug#end')

-- End plugin
vim.g.python3_host_prog = '/usr/bin/python3'

local set = vim.opt

-- Set tabstop to 4 spaces
set.tabstop = 4

-- Set shiftwidth to 4 spaces
set.shiftwidth = 4

-- Use spaces instead of tabs
set.expandtab = true

-- Always show the status line
set.laststatus = 2

-- Enable file type detection
vim.cmd('filetype on')

-- Disable compatibility with Vi
set.compatible = false

-- Ignore case in search patterns
set.ignorecase = true

-- Enable command-line completion
set.wildmenu = true

-- Highlight the current line
-- set.cursorline = true

-- Show line numbers
set.number = true

-- Show relative line numbers
set.relativenumber = true

-- Show (partial) command in the last line of the screen
set.showcmd = true

-- Show the current mode in the command line
set.showmode = true

-- Highlight matching parentheses
set.showmatch = true

-- Highlight search results
set.hlsearch = true

-- Set the command history to 500 entries
set.history = 1000

-- init.lua
vim.opt.runtimepath:append("~/.config/nvim/lua/")

-- load nerdtree config
require('nerdtree_config')

-- load lualine_config 
require('lualine_config')

-- Lade die Tokyo Night Konfigurationsdatei
require('tokyonight_config')

-- Lade die fzf Konfigurationsdatei
require('fzf_config')

-- load alpha dashboard config
require('alpha_config')

-- Enable system clipboard
vim.o.clipboard = 'unnamedplus'

