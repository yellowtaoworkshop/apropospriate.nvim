local M = {}

function M.get_highlights(c)
    local highlights = {
        -- Base UI
        Normal = { fg = c.base03, bg = c.base00 },
        NormalFloat = { fg = c.base03, bg = c.base00_2 },
        FloatBorder = { fg = c.base03, bg = c.base00_2 },
        ColorColumn = { bg = c.base00_p1 },
        Cursor = { bg = c.pink_1, reverse = true },
        CursorColumn = { bg = c.base00_p1 },
        CursorLine = { bg = vim.o.background == "light" and c.base00_1 or c.base00_p1 },
        CursorLineNr = { fg = c.base02, bg = c.base00 },
        LineNr = { fg = c.base01, bg = c.base00 },
        SignColumn = { bg = c.base00, fg = c.base02 },
        FoldColumn = { fg = c.base02, bg = c.base00 },
        Folded = { fg = c.base02, bg = c.base00_1 },
        ErrorMsg = { fg = c.red, bold = true },
        WarningMsg = { fg = c.orange, bold = true },
        MoreMsg = { fg = c.green, bold = true },
        ModeMsg = { fg = c.purple, bold = true },
        Question = { fg = c.blue, bold = true },
        Directory = { fg = c.brown, bold = true },
        Title = { fg = c.orange, bold = true },
        Visual = { bg = c.base00_p2 },
        VisualNOS = { bg = c.base00_p2 },
        Search = { fg = c.yellow, bg = c.base00_p1, bold = true },
        IncSearch = { fg = c.yellow, bg = c.base00_p1, bold = true },
        CurSearch = { fg = c.yellow_1, bg = c.base00_p2, bold = true },
        MatchParen = { underline = true, sp = c.pink },
        NonText = { fg = c.base02 },
        SpecialKey = { fg = c.base01 },
        Whitespace = { fg = c.base00_p2 },
        Conceal = { fg = c.base02 },
        
        -- StatusLine and TabLine
        StatusLine = { bg = c.base00_2, fg = c.base03 },
        StatusLineNC = { bg = c.base00_p1, fg = c.base02 },
        TabLine = { fg = c.base02, bg = c.base00_2 },
        TabLineFill = { bg = c.base00_2 },
        TabLineSel = { fg = c.base03, bg = c.base00, bold = true },
        WinSeparator = { fg = c.base00_p2 },
        
        -- Spelling
        SpellBad = { sp = c.red, undercurl = true },
        SpellCap = { sp = c.blue, undercurl = true },
        SpellLocal = { sp = c.cyan, undercurl = true },
        SpellRare = { sp = c.purple, undercurl = true },

        -- Syntax (Standard Vim groups mapped from Emacs faces)
        Comment = { fg = c.base01 },
        Constant = { fg = c.indigo },
        String = { fg = c.green },
        Character = { fg = c.green },
        Number = { fg = c.cyan },
        Boolean = { fg = c.orange },
        Float = { fg = c.cyan },
        
        Identifier = { fg = c.teal },
        Function = { fg = c.blue },
        
        Statement = { fg = c.purple },
        Conditional = { fg = c.purple },
        Repeat = { fg = c.purple },
        Label = { fg = c.purple },
        Operator = { fg = c.base03 },
        Keyword = { fg = c.purple },
        Exception = { fg = c.red },
        
        PreProc = { fg = c.blue_1 },
        Include = { fg = c.blue_1 },
        Define = { fg = c.blue_1 },
        Macro = { fg = c.blue_1 },
        PreCondit = { fg = c.blue_1 },
        
        Type = { fg = c.orange },
        StorageClass = { fg = c.orange },
        Structure = { fg = c.orange },
        Typedef = { fg = c.orange },
        
        Special = { fg = c.cyan },
        SpecialChar = { fg = c.cyan },
        Tag = { fg = c.cyan },
        Delimiter = { fg = c.base01 },
        SpecialComment = { fg = c.base01 },
        Debug = { fg = c.red_1 },

        Underlined = { underline = true, fg = c.blue },
        Bold = { bold = true },
        Italic = { italic = true },

        -- Diff
        DiffAdd = { fg = c.green, bg = c.base00_p1 },
        DiffChange = { fg = c.blue_1, bg = c.base00_p1 },
        DiffDelete = { fg = c.red_1, bg = c.base00_p1 },
        DiffText = { fg = c.base03, bg = c.base00_p2 },
        
        -- Diagnostic
        DiagnosticError = { fg = c.red },
        DiagnosticWarn = { fg = c.orange },
        DiagnosticInfo = { fg = c.green },
        DiagnosticHint = { fg = c.blue },
        DiagnosticUnderlineError = { sp = c.red, undercurl = true },
        DiagnosticUnderlineWarn = { sp = c.orange, undercurl = true },
        DiagnosticUnderlineInfo = { sp = c.green, undercurl = true },
        DiagnosticUnderlineHint = { sp = c.blue, undercurl = true },
        
        -- Pmenu
        Pmenu = { bg = c.base00_2, fg = c.base02 },
        PmenuSel = { bg = c.base00_1, fg = c.base03 },
        PmenuSbar = { bg = c.base00_p1 },
        PmenuThumb = { bg = c.base00_p3 },
        
        -- Netrw / Dirvish / File explorers
        Directory = { fg = c.brown },
    }

    -- Treesitter basic mapping (falls back to standard syntax groups if not defined)
    highlights["@variable"] = { fg = c.teal }
    highlights["@variable.builtin"] = { fg = c.cyan }
    highlights["@function"] = { fg = c.blue }
    highlights["@function.builtin"] = { fg = c.blue_1 }
    highlights["@function.macro"] = { fg = c.blue_1 }
    highlights["@keyword"] = { fg = c.purple }
    highlights["@keyword.function"] = { fg = c.purple }
    highlights["@keyword.operator"] = { fg = c.purple }
    highlights["@keyword.return"] = { fg = c.purple }
    highlights["@string"] = { fg = c.green }
    highlights["@number"] = { fg = c.cyan }
    highlights["@boolean"] = { fg = c.orange }
    highlights["@constant"] = { fg = c.indigo }
    highlights["@constant.builtin"] = { fg = c.cyan }
    highlights["@type"] = { fg = c.orange }
    highlights["@type.builtin"] = { fg = c.orange }
    highlights["@parameter"] = { fg = c.teal }
    highlights["@field"] = { fg = c.base03 }
    highlights["@property"] = { fg = c.base03 }
    highlights["@constructor"] = { fg = c.orange }
    highlights["@tag"] = { fg = c.blue }
    highlights["@tag.attribute"] = { fg = c.teal }
    highlights["@tag.delimiter"] = { fg = c.purple }
    highlights["@operator"] = { fg = c.base02 }

    return highlights
end

return M
