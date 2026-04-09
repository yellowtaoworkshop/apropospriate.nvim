local palette = require('apropospriate.palette').get_palette(vim.o.background)

local apropospriate = {}

apropospriate.normal = {
  a = { bg = palette.blue, fg = palette.base00, gui = 'bold' },
  b = { bg = palette.base00_p1, fg = palette.base03 },
  c = { bg = palette.base00_1, fg = palette.base02 }
}

apropospriate.insert = {
  a = { bg = palette.green, fg = palette.base00, gui = 'bold' },
  b = { bg = palette.base00_p1, fg = palette.base03 },
  c = { bg = palette.base00_1, fg = palette.base02 }
}

apropospriate.visual = {
  a = { bg = palette.purple, fg = palette.base00, gui = 'bold' },
  b = { bg = palette.base00_p1, fg = palette.base03 },
  c = { bg = palette.base00_1, fg = palette.base02 }
}

apropospriate.replace = {
  a = { bg = palette.red, fg = palette.base00, gui = 'bold' },
  b = { bg = palette.base00_p1, fg = palette.base03 },
  c = { bg = palette.base00_1, fg = palette.base02 }
}

apropospriate.command = {
  a = { bg = palette.yellow, fg = palette.base00, gui = 'bold' },
  b = { bg = palette.base00_p1, fg = palette.base03 },
  c = { bg = palette.base00_1, fg = palette.base02 }
}

apropospriate.inactive = {
  a = { bg = palette.base00_2, fg = palette.base02, gui = 'bold' },
  b = { bg = palette.base00_2, fg = palette.base02 },
  c = { bg = palette.base00_1, fg = palette.base01 }
}

return apropospriate
