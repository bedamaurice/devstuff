-- ~/.config/nvim/init.lua
--
-- Deaktiviere den Perl-Provider
vim.g.loaded_perl_provider = 0
-- Deaktivieren des Ruby-Providers (falls nicht benötigt)
vim.g.loaded_ruby_provider = 0
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug 'vim-airline/vim-airline'  
Plug 'folke/tokyonight.nvim'
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'

Plug 'echasnovski/mini.nvim'

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
set.cursorline = true

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
-- Lade die NERDTree Konfigurationsdatei
require('nerdtree_config')
-- Lade die Airline Konfigurationsdatei
require('airline_config')
-- Lade die Tokyo Night Konfigurationsdatei
require('tokyonight_config')
-- Lade die fzf Konfigurationsdatei
require('fzf_config')

-- Map cmd + c to copy in normal mode using pbcopy
vim.api.nvim_set_keymap('n', '<D-c>', ':w !pbcopy<CR><CR>', { noremap = true, silent = true })

-- Map cmd + c to copy in visual mode using pbcopy
vim.api.nvim_set_keymap('v', '<D-c>', ':w !pbcopy<CR><CR>', { noremap = true, silent = true })

-- Enable system clipboard
vim.o.clipboard = 'unnamedplus'

-- Disable clipboard for dd command
vim.api.nvim_set_keymap('n', 'dd', '"_dd', { noremap = true, silent = true })

