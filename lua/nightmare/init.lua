local Nightmare = {}
local Theme = require'nightmare.theme'

local highlight = function(group, color)
  local fg    = color.fg    and 'guifg=' .. color.fg    or 'guifg=NONE'
  local bg    = color.bg    and 'guibg=' .. color.bg    or 'guibg=NONE'
  local style = color.style and 'gui='   .. color.style or 'gui=NONE'
  local sp    = color.sp    and 'guisp=' .. color.sp    or ''

  vim.api.nvim_command(string.format(
    'highlight %s %s %s %s %s',
    group, fg, bg, style, sp
  ))
end

function Nightmare.apply()
  vim.api.nvim_command('highlight clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background    = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name   = 'nightmare'

  local async
  async = vim.loop.new_async(
    vim.schedule_wrap(
      function ()
        Theme.terminal()
        for group, color in pairs(Theme.plugins()) do
          highlight(group, color)
        end
        for group, color in pairs(Theme.treesitter()) do
          highlight(group, color)
        end
        for group, color in pairs(Theme.lsp()) do
          highlight(group, color)
        end
        for group, color in pairs(Theme.filetypes()) do
          highlight(group, color)
        end

        async:close()
      end
    )
  )

  for group, color in pairs(Theme.editor()) do
    highlight(group, color)
  end
  for group, color in pairs(Theme.syntax()) do
    highlight(group, color)
  end
  async:send()
end

return Nightmare
