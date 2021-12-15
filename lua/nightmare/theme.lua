local Theme = {}
local P = require('nightmare.palette')

Theme.syntax = function()
  return {
    Comment        = { fg = P.bg07, style = "italic" },

    Constant       = { fg = P.color03 },
    String         = { fg = P.color0A, style = "italic" },
    Character      = { fg = P.color0A, style = "italic" },
    Number         = { fg = P.color03, style = "italic" },
    Boolean        = { fg = P.color03 },
    Float          = { fg = P.color03, style = "italic" },

    Identifier     = { fg = P.color09 },
    Function       = { fg = P.color04, style = "bold" },

    Statement      = { fg = P.fg05,    style = "bold" },
    Conditional    = { fg = P.color0D, style = "italic" },
    Repeat         = { fg = P.color0D, style = "bold,italic" },
    Label          = { fg = P.color0D, style = "bold" },
    Operator       = { fg = P.color0D },
    Keyword        = { fg = P.color05, style = "italic" },
    Exception      = { fg = P.color0D, style = "bold" },

    PreProc        = { fg = P.color0E },
    Include        = { fg = P.color0E, style = "bold" },
    Define         = { fg = P.color0E, style = "bold" },
    Macro          = { fg = P.color0E, style = "bold" },
    PreCondit      = { fg = P.color0E },

    Type           = { fg = P.color04 },
    StorageClass   = { fg = P.color04 },
    Structure      = { fg = P.color04 },
    Typedef        = { fg = P.color04 },

    Special        = { fg = P.color09 },
    SpecialChar    = { fg = P.color0A, style = "bold,italic" },
    Tag            = { fg = P.color09 },
    Delimiter      = { fg = P.color02, style = "bold" },
    SpecialComment = { fg = P.bg07,    style = "bold,italic" },
    Debug          = { fg = P.color00, style = "bold" },

    Underlined     = { fg = P.fg00,    style = "underline", sp = P.fg00 },
    Ignore         = { fg = P.fg00 },
    Error          = { fg = P.color01, style = "underline", sp = P.color01 },
    Todo           = { fg = P.fg00,    style = "bold,italic" },
  }
end

Theme.editor = function()
  return {
    -- Cursor
    Cursor           = { fg = P.fg00,    bg = P.cursor },
    lCursor          = { fg = P.fg00,    bg = P.cursor,  style = "italic" },
    CursorIM         = { fg = P.fg00,    bg = P.cursor,  style = "italic" },
    TermCursor       = { fg = P.fg00,    bg = P.cursor },
    TermCursorNC     = { fg = P.fg00,    bg = P.bg02 },
    -- Editor: normal, horizontal lines, vertical lines and signs
    ColorColumn      = { fg = P.none,    bg = P.bg03 },
    CursorColumn     = { fg = P.none,    bg = P.bg02 },
    CursorLine       = { fg = P.none,    bg = P.bg02 },
    CursorLineNr     = { fg = P.color0B, bg = P.none },
    EndOfBuffer      = { fg = P.bg03,    bg = P.none },
    FloatBorder      = { fg = P.bg03,    bg = P.bg00 },
    FoldColumn       = { fg = P.fg08,    bg = P.bg01 },
    Folded           = { fg = P.color00, bg = P.bg01,    style = "bold,italic" },
    LineNr           = { fg = P.bg05,    bg = P.none },
    NonText          = { fg = P.bg03,    bg = P.none },
    Normal           = { fg = P.fg00,    bg = P.bg00 },
    NormalFloat      = { fg = P.fg00,    bg = P.bg00 },
    NormalNC         = { fg = P.fg00,    bg = P.bg00 },
    SignColumn       = { fg = P.fg00,    bg = P.bg00 },
    VertSplit        = { fg = P.bg05,    bg = P.bg00 },
    Visual           = { fg = P.none,    bg = P.bg03 },
    VisualNOS        = { fg = P.none,    bg = P.bg08 },
    -- Messages
    Directory        = { fg = P.color0C, bg = P.none },
    ErrorMsg         = { fg = P.fg00,    bg = P.color01, style = 'bold' },
    ModeMsg          = { fg = P.fg00,    bg = P.none,    style = 'bold,italic' },
    MoreMsg          = { fg = P.fg00,    bg = P.none,    style = 'bold,italic' },
    MsgArea          = { fg = P.fg00,    bg = P.bg00 },
    MsgSeparator     = { fg = P.none,    bg = P.bg04 },
    Question         = { fg = P.color02, bg = P.none },
    Title            = { fg = P.color04, bg = P.none,    style = 'bold' },
    WarningMsg       = { fg = P.color0B, bg = P.none,    style = 'underline' },
    -- Search and Substitute
    Incsearch        = { fg = P.bg00,    bg = P.color04 },
    Search           = { fg = P.bg00,    bg = P.color03 },
    Substitute       = { fg = P.bg00,    bg = P.color03 },
    -- Special
    Conceal          = { fg = P.bg07,    bg = P.none },
    MatchParen       = { fg = P.fg00,    bg = P.color04 },
    SpecialKey       = { fg = P.bg06,    bg = P.none },
    -- Status and Tab Lines (this are equal to Normal, I rely on lualine highlights)
    StatusLine       = { fg = P.fg00,    bg = P.bg00 },
    StatusLineNC     = { fg = P.fg00,    bg = P.bg00 },
    TabLine          = { fg = P.fg00,    bg = P.bg00 },
    TabLineFill      = { fg = P.fg00,    bg = P.bg00 },
    TabLineSel       = { fg = P.fg00,    bg = P.bg00 },
    -- Quickfix and Location List
    QuickFixLine     = { fg = P.none,    bg = P.bg04,    style = "bold" },
    qfLineNr         = { fg = P.color03, bg = P.none },
    qfFileName       = { fg = P.color04, bg = P.none,    style = "bold,italic" },
    qfError          = { fg = P.color01, bg = P.none },
    qfSeparator      = { fg = P.color03, bg = P.none,    style = "bold" },
    -- Popup Menu
    Pmenu            = { fg = P.fg00,    bg = P.bg04 },
    PmenuSel         = { fg = P.fg00,    bg = P.color04, style = 'bold' },
    PmenuSbar        = { fg = P.none,    bg = P.bg04 },
    PmenuThumb       = { fg = P.none,    bg = P.color04 },
    WildMenu         = { fg = P.fg00,    bg = P.color04, style = 'bold' },
    -- Spellings
    SpellBad         = { style = 'undercurl', sp = P.color01 },
    SpellCap         = { style = 'underline', sp = P.color06 },
    SpellLocal       = { style = 'underline', sp = P.color0A },
    SpellRare        = { style = 'underline', sp = P.color0B },
    -- Diff highlights
    DiffAdd          = { fg = P.fg00,   bg = P.bg05 },
    DiffChange       = { fg = P.fg00,   bg = P.bg03 },
    DiffDelete       = { fg = P.fg00,   bg = P.color01 },
    DiffText         = { fg = P.fg00,   bg = P.color04, style = "bold" },
  }
end

Theme.terminal = function()
  vim.g.terminal_color_0  = P.color00
  vim.g.terminal_color_1  = P.color01
  vim.g.terminal_color_2  = P.color02
  vim.g.terminal_color_3  = P.color03
  vim.g.terminal_color_4  = P.color04
  vim.g.terminal_color_5  = P.color05
  vim.g.terminal_color_6  = P.color06
  vim.g.terminal_color_7  = P.color07
  vim.g.terminal_color_8  = P.color08
  vim.g.terminal_color_9  = P.color09
  vim.g.terminal_color_10 = P.color0A
  vim.g.terminal_color_11 = P.color0B
  vim.g.terminal_color_12 = P.color0C
  vim.g.terminal_color_13 = P.color0D
  vim.g.terminal_color_14 = P.color0E
  vim.g.terminal_color_15 = P.color0F
end

Theme.treesitter = function()
  return {
    -- For now the default highlighting links are reported for future improvements
    TSNone               = { fg = P.fg00 },

    TSPunctDelimiter     = { fg = P.color02, style = "bold" },
    TSPunctBracket       = { fg = P.color02, style = "bold" },
    TSPunctSpecial       = { fg = P.color02, style = "bold" },

    TSConstant           = { fg = P.color03 },
    TSConstBuiltin       = { fg = P.color09 },
    TSConstMacro         = { fg = P.color0E, style = "bold" },
    TSString             = { fg = P.color0A, style = "italic" },
    TSStringRegex        = { fg = P.color0A, style = "italic" },
    TSStringEscape       = { fg = P.color0A, style = "bold,italic" },
    TSStringSpecial      = { fg = P.color0A, style = "bold,italic" },
    TSCharacter          = { fg = P.color0A, style = "italic" },

    TSNumber             = { fg = P.color03, style = "italic" },
    TSBoolean            = { fg = P.color03 },
    TSFloat              = { fg = P.color03, style = "italic" },

    TSFunction           = { fg = P.color04, style = "bold" },
    TSFuncBuiltin        = { fg = P.color09 },
    TSFuncMacro          = { fg = P.color0E, style = "bold" },

    TSParameter          = { fg = P.color09 },
    TSParameterReference = { fg = P.color09 },
    TSMethod             = { fg = P.color04, style = "bold" },
    TSField              = { fg = P.color09 },
    TSProperty           = { fg = P.color09 },
    TSConstructor        = { fg = P.color09 },
    TSAnnotation         = { fg = P.color0E },
    TSAttribute          = { fg = P.color0E },
    TSNamespace          = { fg = P.color0E, style = "bold" },
    TSSymbol             = { fg = P.color09 },

    TSConditional        = { fg = P.color0D, style = "italic" },
    TSRepeat             = { fg = P.color0D, style = "bold,italic" },
    TSLabel              = { fg = P.color0D, style = "bold" },
    TSOperator           = { fg = P.color0D },
    TSKeyword            = { fg = P.color05, style = "italic" },
    TSKeywordFunction    = { fg = P.color05, style = "italic" },
    TSKeywordOperator    = { fg = P.color0D },
    TSKeywordReturn      = { fg = P.color05, style = "italic" },
    TSException          = { fg = P.color0D, style = "bold" },

    TSType               = { fg = P.color04 },
    TSTypeBuiltin        = { fg = P.color04 },
    TSInclude            = { fg = P.color0E, style = "bold" },

    TSVariableBuiltin    = { fg = P.color09 },

    TSText               = { fg = P.fg00 },
    TSStrong             = { fg = P.fg00,    style = "bold" },
    TSEmphasis           = { fg = P.fg00,    style = "italic" },
    TSUnderline          = { fg = P.fg00,    style = "underline" },
    TSStrike             = { fg = P.fg00,    style = "strikethrough" },
    TSMath               = { fg = P.color09 },
    TSTextReference      = { fg = P.color03 },
    TSEnvironment        = { fg = P.color0E, style = "bold" },
    TSEnvironmentName    = { fg = P.color04 },
    TSTitle              = { fg = P.color04, style = "bold" },
    TSLiteral            = { fg = P.color0A, style = "italic" },
    TSURI                = { fg = P.color0B, style = "underline" },

    TSComment            = { fg = P.bg07,    style = "italic" },
    TSNote               = { fg = P.bg07,    style = "bold,italic" },
    TSWarning            = { fg = P.color03, style = "bold" },
    TSDanger             = { fg = P.color01, style = 'standout' },

    TSTag                = { fg = P.color0D, style = "bold" },
    TSTagDelimiter       = { fg = P.color02, style = "bold" },
    TSTagAttribute       = { fg = P.color09 },
  }
end

Theme.lsp = function()
  return {
    LspCodeLens                      = { fg = P.bg07 },
    DiagnosticDefaultError           = { fg = P.color01 },
    DiagnosticDefaultHint            = { fg = P.color06 },
    DiagnosticDefaultInformation     = { fg = P.color04 },
    DiagnosticDefaultWarning         = { fg = P.color0B },

    DiagnosticFloatingError          = { fg = P.color01 },
    DiagnosticFloatingHint           = { fg = P.color06 },
    DiagnosticFloatingInformation    = { fg = P.color04 },
    DiagnosticFloatingWarning        = { fg = P.color0B },

    DiagnosticSignError              = { fg = P.color01 },
    DiagnosticSignHint               = { fg = P.color06 },
    DiagnosticSignInformation        = { fg = P.color04 },
    DiagnosticSignWarning            = { fg = P.color0B },

    DiagnosticUnderlineError         = { style = 'undercurl', sp = P.color05 },
    DiagnosticUnderlineHint          = { style = 'undercurl', sp = P.color0A },
    DiagnosticUnderlineInformation   = { style = 'undercurl', sp = P.color0A },
    DiagnosticUnderlineWarning       = { style = 'undercurl', sp = P.color0D },

    DiagnosticVirtualTextError       = { fg = P.color01 },
    DiagnosticVirtualTextHint        = { fg = P.color06 },
    DiagnosticVirtualTextInformation = { fg = P.color04 },
    DiagnosticVirtualTextWarning     = { fg = P.color0B },

    LspReferenceRead                 = { fg = P.color07, bg = P.color00 },
    LspReferenceText                 = { fg = P.color07, bg = P.color00 },
    LspReferenceWrite                = { fg = P.color07, bg = P.color00 },

    DiagnosticError                  = { fg = P.color01 },
    DiagnosticHint                   = { fg = P.color06 },
    DiagnosticInformation            = { fg = P.color04 },
    DiagnosticWarning                = { fg = P.color0B },
  }
end

Theme.plugins = function()
  local fugitive = {
    gitcommitBranch        = { fg = P.color0B, style = 'bold', },
    gitcommitComment       = { fg = P.bg07,    style = "italic" },
    gitcommitDiscarded     = { fg = P.bg06 },
    gitcommitDiscardedFile = { fg = P.bg06, style = 'bold', },
    gitcommitDiscardedType = { fg = P.color0E },
    gitcommitHeader        = { fg = P.color0C },
    gitcommitOverflow      = { fg = P.color01, style = 'underline', sp = P.color01 },
    gitcommitSelected      = { fg = P.color03 },
    gitcommitSelectedFile  = { fg = P.color0B, style = 'bold', },
    gitcommitSelectedType  = { fg = P.color06 },
    gitcommitSummary       = { fg = P.color0B },
    gitcommitUnmergedFile  = { fg = P.color08, style = 'bold', },
    gitcommitUnmergedType  = { fg = P.color0D },
    gitcommitUntracked     = { fg = P.color03 },
    gitcommitUntrackedFile = { fg = P.color0A },
  }
  local gitsigns = {
    GitSignsAdd              = { fg = P.color0A },
    GitSignsAddNr            = { fg = P.color0A },
    GitSignsAddLn            = { fg = P.color0A },
    GitSignsChange           = { fg = P.color06 },
    GitSignsChangeNr         = { fg = P.color06 },
    GitSignsChangeLn         = { fg = P.color06 },
    GitSignsDelete           = { fg = P.color01 },
    GitSignsDeleteNr         = { fg = P.color01 },
    GitSignsDeleteLn         = { fg = P.color01 },
    GitSignsCurrentLineBlame = { fg = P.bg07 }
  }
  local indentblankline = {
    IndentBlanklineChar               = { fg = P.bg06 },
    IndentBlanklineSpaceChar          = { fg = P.bg06 },
    IndentBlanklineSpaceCharBlankline = { fg = P.bg06 },

    IndentBlanklineContextChar        = { fg = P.color04 },
  }
  local nvim_cmp = {
    CmpItemAbbr           = { fg = P.bg08 },
    CmpItemAbbrMatch      = { fg = P.fg02,    style = "bold" },
    CmpItemAbbrMatchFuzzy = { fg = P.color09 },
    CmpItemMenu           = { fg = P.color04 },
    CmpItemKind           = { fg = P.color02, style ="italic" },
  }
  local nvimtree = {
    NvimTreeEmptyFolderName  = { fg = P.bg07 },
    NvimTreeExecFile         = { fg = P.color03 },
    NvimTreeFolderName       = { fg = P.color02 },
    NvimTreeIndentMarker     = { fg = P.bg07 },
    NvimTreeNormal           = { fg = P.fg00,    bg = P.bg00 },
    NvimTreeOpenedFolderName = { fg = P.color02, style = "bold,italic" },
    NvimTreeRootFolder       = { fg = P.color04, style = 'bold,italic' },
    NvimTreeSpecialFile      = { fg = P.fg00,    style = 'bold,italic' },
    NvimTreeSymlink          = { fg = P.color05, style = "italic" },
    NvimTreeWindowPicker     = { fg = P.fg00, bg = P.bg05, style = 'bold' },

    NvimTreeGitDeleted  = { fg = P.color01 },
    NvimTreeGitDirty    = { fg = P.color03 },
    NvimTreeGitMerge    = { fg = P.color05 },
    NvimTreeGitNew      = { fg = P.color06 },
    NvimTreeGitRenamed  = { fg = P.color0C, style = 'italic' },
    NvimTreeGitStaged   = { fg = P.color02 },

    NvimTreeFileDeleted = { fg = P.color01 },
    NvimTreeFileDirty   = { fg = P.color03 },
    NvimTreeFileMerge   = { fg = P.color05 },
    NvimTreeFileNew     = { fg = P.color06 },
    NvimTreeFileRenamed = { fg = P.color0C, style = 'italic' },
    NvimTreeFileStaged  = { fg = P.color02 },
  }
  local outline = {
    SymbolsOutlineConnector = { fg = P.bg05 },
    FocusedSymbol           = { fg = P.color0B, style = "bold,italic" },
  }
  local startify = {
    StartifyBracket = { fg = P.color0B },
    StartifyFile    = { fg = P.color0C, style = 'bold' },
    StartifyFooter  = { fg = P.color03 },
    StartifyHeader  = { fg = P.color03 },
    StartifyNumber  = { fg = P.bg08 },
    StartifyPath    = { fg = P.bg07, style = 'italic' },
    StartifySection = { fg = P.color04 },
    StartifySelect  = { fg = P.fg03, style = 'bold' },
    StartifySlash   = { fg = P.fg05,       style = 'italic' },
    StartifySpecial = { fg = P.color01 },
    StartifyVar     = { fg = P.fg06 },
  }
  local termdebug = {
    debugPC         = { fg = P.none,    bg = P.bg03,    style = "bold" },
    debugBreakpoint = { fg = P.fg00,    bg = P.color01, style = 'bold' },
  }

  return vim.tbl_extend('error',
    fugitive,
    gitsigns,
    indentblankline,
    nvim_cmp,
    nvimtree,
    outline,
    startify,
    termdebug
  )
end

Theme.filetypes = function()
  local diff = {
    diffFile      = { fg = P.color04, style = "bold" },
    diffOldFile   = { fg = P.color09 },
    diffNewFile   = { fg = P.color03, style = "bold" },
    diffIndexLine = { fg = P.color0E, style = "italic" },
    diffLine      = { fg = P.fg01,    style = "bold" },
    diffSubname   = { fg = P.color0E, style = "italic" },
    diffRemoved   = { fg = P.color01 },
    diffAdded     = { fg = P.color02 },
    diffChanged   = { fg = P.color04 },
  }
  local markdown = {
    markdownH1                 = { fg = P.color04, style = "bold,italic" },
    markdownH2                 = { fg = P.color06, style = "bold" },
    markdownH3                 = { fg = P.color02, style = "bold" },
    markdownH4                 = { fg = P.color03, style = "bold" },
    markdownH5                 = { fg = P.color04 },
    markdownH6                 = { fg = P.color06 },
    markdownH1Delimiter        = { fg = P.color0C },
    markdownH2Delimiter        = { fg = P.color0E, style = "bold" },
    markdownH3Delimiter        = { fg = P.color0A, style = "bold" },
    markdownH4Delimiter        = { fg = P.color0B, style = "bold" },
    markdownH5Delimiter        = { fg = P.color0C },
    markdownH6Delimiter        = { fg = P.color0E },
    markdownHeadingRule        = { fg = P.color02, style = "bold" },
    markdownListMarker         = { fg = P.color04 },
    markdownOrderedListMarker  = { fg = P.color04 },
    markdownCode               = { fg = P.bg07 },
    markdownCodeBlock          = { fg = P.bg07, style = "italic" },
    markdownCodeDelimiter      = { fg = P.color0B, style = "bold" },
    markdownLineBreak          = { bg = P.bg03 },
    markdownUrl                = { fg = P.color0B },
    markdownLinkText           = { fg = P.color04 },
    markdownFootnote           = { fg = P.color0B },
    markdownFootnoteDefinition = { fg = P.color0B },
  }

  return vim.tbl_extend('error',
    diff,
    markdown
  )
end

return Theme
