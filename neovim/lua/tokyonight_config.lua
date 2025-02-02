-- ~/.config/nvim/lua/tokyonight_config.lua

-- Tokyo Night Konfiguration in Lua

-- Setze das Farbschema auf Tokyo Night
vim.cmd('colorscheme tokyonight')

-- Konfiguriere Tokyo Night Einstellungen
require('tokyonight').setup({
  style = 'night', -- Optionen: 'storm', 'night', 'day'
  transparent = false, -- Hintergrund transparent setzen
  terminal_colors = true, -- Terminalfarben verwenden
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    sidebars = "dark", -- Hintergrund für Seitenleisten
    floats = "dark", -- Hintergrund für schwebende Fenster
  },
  sidebars = { "qf", "help" }, -- Seitenleisten, die den dunkleren Hintergrund verwenden
  day_brightness = 0.3, -- Helligkeit für den Tagmodus
  hide_inactive_statusline = false, -- Verstecke die Statuslinie in inaktiven Fenstern
  dim_inactive = false, -- Dimmt inaktive Fenster
})

-- Aktivieren von 24-bit RGB Farben im Terminal (erforderlich für Tokyo Night)
vim.opt.termguicolors = true

-- Zusätzliche Einstellungen oder Anpassungen
vim.cmd [[
  " Weitere Tokyo Night-Einstellungen können hier hinzugefügt werden
]]
