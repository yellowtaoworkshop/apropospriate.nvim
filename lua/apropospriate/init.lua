local M = {}

M.name = "apropospriate"

local set_hl = vim.api.nvim_set_hl
local set_hl_ns = vim.api.nvim__set_hl_ns or vim.api.nvim_set_hl_ns
local ns = 0

function M.clear_namespace()
    vim.api.nvim_buf_clear_namespace(0, ns, 0, -1)
    set_hl_ns(0)
end

M.setup = function()
    M.clear_namespace()

    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = M.name

    local bg = vim.o.background
    local palette = require("apropospriate.palette").get_palette(bg)
    local highlights = require("apropospriate.highlights").get_highlights(palette)

    for group, highlight in pairs(highlights) do
        set_hl(ns, group, highlight)
    end
    set_hl_ns(ns)

    -- Handle vim.o.background switching dynamically
    vim.api.nvim_create_autocmd("OptionSet", {
        pattern = "background",
        callback = function()
            local new_bg = vim.v.option_new
            local new_palette = require("apropospriate.palette").get_palette(new_bg)
            local new_highlights = require("apropospriate.highlights").get_highlights(new_palette)
            
            for group, highlight in pairs(new_highlights) do
                set_hl(ns, group, highlight)
            end
        end
    })

    vim.api.nvim_create_autocmd("ColorSchemePre", {
        callback = function()
            if vim.g.colors_name ~= M.name then
                M.clear_namespace()
            end
            return true
        end
    })
end

return M
