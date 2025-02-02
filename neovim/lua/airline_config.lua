-- ~/.config/nvim/lua/airline_config.lua

-- Airline Konfiguration in Lua

-- Aktivieren von Powerline-Schriftarten
vim.g.airline_powerline_fonts = 1

-- Deaktiviere den Tabline-Modus von Airline, wenn du eine andere Tabline-Implementierung verwendest
vim.g['airline#extensions#tabline#enabled'] = 0

-- Aktivieren von Airline-Themes
vim.g.airline_theme = 'dark'

-- Konfigurieren von Airline-Erweiterungen
vim.g['airline#extensions#branch#enabled'] = 1
vim.g['airline#extensions#hunks#enabled'] = 1
vim.g['airline#extensions#nvimlsp#enabled'] = 1
vim.g['airline#extensions#ale#enabled'] = 1

-- Konfigurieren von Airline-Symbolen
vim.g.airline_symbols = {
  branch = '',
  readonly = '',
  linenr = '',
  maxlinenr = '☰',
}

-- Zusätzliche Einstellungen oder Anpassungen
vim.cmd [[
  " Weitere Airline-Einstellungen können hier hinzugefügt werden
]]

-- Weitere Airline-Erweiterungen können hier aktiviert werden
