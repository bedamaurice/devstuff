-- Set the style of Tokyo Night theme
vim.g.tokyonight_style = "storm" -- Options: "storm", "night", "day"
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_italic_keywords = true
vim.g.tokyonight_italic_functions = false
vim.g.tokyonight_italic_variables = false
vim.g.tokyonight_transparent = false
vim.g.tokyonight_hide_inactive_statusline = false
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_dark_float = true

-- Load the 'tokyonight' colorscheme
vim.cmd [[colorscheme tokyonight]]

-- Optional: Set other Neovim settings here
-- For example:
