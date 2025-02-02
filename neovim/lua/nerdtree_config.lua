-- ~/.config/nvim/lua/nerdtree_config.lua

-- NERDTree Konfiguration in Lua

-- Zeige versteckte Dateien
vim.g.NERDTreeShowHidden = 1

-- Ignoriere bestimmte Dateitypen
vim.g.NERDTreeIgnore = { '\\.pyc$', '\\~$' }

-- Automatisch Puffer löschen, wenn Datei geschlossen wird
vim.g.NERDTreeAutoDeleteBuffer = 1

-- NERDTree schließen, wenn eine Datei geöffnet wird
vim.g.NERDTreeQuitOnOpen = 1

-- NERDTree-Tastenkombinationen
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>n', ':NERDTreeFind<CR>', { noremap = true, silent = true })

-- Automatisch NERDTree öffnen, wenn kein Argument übergeben wird
vim.api.nvim_exec([[
  autocmd VimEnter * if !argc() | NERDTree | endif
]], false)

-- Schließe vim, wenn NERDTree das letzte Fenster ist
vim.api.nvim_exec([[
  autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif
]], false)
