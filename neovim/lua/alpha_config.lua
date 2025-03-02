-- Import the alpha-nvim module
local alpha = require('alpha')
local dashboard = require('alpha.themes.dashboard')

-- Set the header
dashboard.section.header.val = {
    [[                          __                ]],
    [[     ___     ___    ___  /\_\    ___ ___    ]],
    [[   /' _ `\  / __`\ /' _ `\\/\ \ /' __` __`\  ]],
    [[   /\ \/\ \/\  __/ /\ \/\ \\ \ \/\ \/\ \/\ \ ]],
    [[   \ \_\ \_\ \____\\ \_\ \_\\ \_\ \_\ \_\ \_\]],
    [[    \/_/\/_/\/____/ \/_/\/_/ \/_/\/_/\/_/\/_/]],
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "  Find file", ":Files<CR>"),
    dashboard.button("r", "  Recent files", ":History<CR>"),
    dashboard.button("u", "  Update Plugins", ":PlugUpdate<CR>"),
    dashboard.button("a", "  Alpha config", ":e ~/.config/nvim/lua/alpha_config.lua<CR>"),
    dashboard.button("s", "  Settings", ":e ~/.config/nvim/init.lua<CR>"),
    dashboard.button("z", "  Zsh settings", ":e ~/.zshrc<CR>"),
    dashboard.button("q", "  Quit", ":qa<CR>"),
}
-- Set footer
local function footer()
    return "Welcome to Neovim"
end
dashboard.section.footer.val = footer()

-- Set up colors
local colors = {
    bg = "#1a1b26",
    fg = "#c0caf5",
    yellow = "#e0af68",
    cyan = "#7dcfff",
    darkblue = "#3d59a1",
    green = "#9ece6a",
    orange = "#ff9e64",
    violet = "#9d7cd8",
    magenta = "#bb9af7",
    blue = "#7aa2f7",
    red = "#f7768e"
}

-- Apply colors
dashboard.section.header.opts.hl = "Type"
dashboard.section.buttons.opts.hl = "Keyword"
dashboard.section.footer.opts.hl = "Comment"

-- Set up alpha
alpha.setup(dashboard.opts)

vim.api.nvim_exec([[
  autocmd VimEnter * if !argc() | wincmd l | Alpha | endif
]], false)



