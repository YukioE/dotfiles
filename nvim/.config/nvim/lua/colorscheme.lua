vim.o.termguicolors = true
vim.cmd("highlight clear")

local c = {
    bg      = "#282828",
    fg      = "#d4d4d4",
    gray    = "#767676",

    red     = "#e78284",
    green   = "#a6d189",
    yellow  = "#e5c890",
    blue    = "#8caaee",
    magenta = "#ca9ee6",
    cyan    = "#ef9f76",

}

local hl = vim.api.nvim_set_hl

-- UI
hl(0, "Normal",        { fg = c.fg, bg = c.bg })
hl(0, "NormalFloat",   { fg = c.fg, bg = c.bg })
hl(0, "FloatBorder",   { fg = c.gray, bg = c.bg })

hl(0, "Cursor",        { fg = c.bg, bg = c.fg })
hl(0, "CursorLine",    { bg = "#333333" })
hl(0, "LineNr",        { fg = c.gray })
hl(0, "CursorLineNr",  { fg = c.yellow })
hl(0, "Visual",        { bg = "#4a4a4a" })

hl(0, "StatusLine",    { fg = c.fg, bg = c.bg })
hl(0, "StatusLineNC",  { fg = c.gray, bg = c.bg })

-- Syntax
hl(0, "Comment",       { fg = c.gray, italic = true })
hl(0, "String",        { fg = c.green })
hl(0, "Number",        { fg = c.yellow })
hl(0, "Function",      { fg = c.blue })
hl(0, "Keyword",       { fg = c.red })
hl(0, "Type",          { fg = c.blue })
hl(0, "Constant",      { fg = c.magenta })
hl(0, "Operator",      { fg = c.cyan })

-- Diagnostics
hl(0, "DiagnosticError", { fg = c.red })
hl(0, "DiagnosticWarn",  { fg = c.yellow })
hl(0, "DiagnosticInfo",  { fg = c.blue })
hl(0, "DiagnosticHint",  { fg = c.cyan })
