-- ~/.config/nvim/lua/fzf_config.lua

-- Grundlegende fzf Konfiguration in Lua

-- Fuzzy suchen und öffnen von Dateien
vim.api.nvim_set_keymap('n', '<leader>ff', ':Files<CR>', { noremap = true, silent = true })

-- Fuzzy suchen und öffnen von Buffern
vim.api.nvim_set_keymap('n', '<leader>fb', ':Buffers<CR>', { noremap = true, silent = true })

-- Fuzzy suchen und öffnen von Hilfe-Themen
vim.api.nvim_set_keymap('n', '<leader>fh', ':Helptags<CR>', { noremap = true, silent = true })

-- Fuzzy suchen und öffnen von Commits
vim.api.nvim_set_keymap('n', '<leader>fc', ':Commits<CR>', { noremap = true, silent = true })

-- Fuzzy suchen und öffnen von Dateien im aktuellen Git-Verzeichnis
vim.api.nvim_set_keymap('n', '<leader>fg', ':GFiles<CR>', { noremap = true, silent = true })
