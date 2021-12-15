local P = require('nightmare.palette')

local Nightmare = {}

Nightmare.normal = {
  a = { fg = P.fg00,    bg = P.color04, gui = 'bold' },
  b = { fg = P.fg00,    bg = P.bg05 },
  c = { fg = P.color0E, bg = P.bg00,    gui = 'italic' },
}

Nightmare.insert = {
  a = { fg = P.bg03,    bg = P.color0B, gui = 'bold' },
  b = { fg = P.fg00,    bg = P.bg05 },
  c = { fg = P.color0E, bg = P.bg00,    gui = 'italic' },
}

Nightmare.visual = {
  a = { fg = P.bg03,    bg = P.color0A, gui = 'bold' },
  b = { fg = P.fg00,    bg = P.bg05 },
  c = { fg = P.color0E, bg = P.bg00,    gui = 'italic' },
}

Nightmare.replace = {
  a = { fg = P.fg00,    bg = P.color01, gui = 'bold' },
  b = { fg = P.fg00,    bg = P.bg05 },
  c = { fg = P.color0E, bg = P.bg00,    gui = 'italic' },
}

Nightmare.command = {
  a = { fg = P.bg00,    bg = P.color06, gui = 'bold' },
  b = { fg = P.fg00,    bg = P.bg05 },
  c = { fg = P.color0E, bg = P.bg00,    gui = 'italic' },
}

Nightmare.inactive = {
  a = { fg = P.color0E,    bg = P.bg00,    gui = 'bold' },
  b = { fg = P.color0E,    bg = P.bg00 },
  c = { fg = P.color0E, bg = P.bg00,    gui = 'italic' },
}

return Nightmare
