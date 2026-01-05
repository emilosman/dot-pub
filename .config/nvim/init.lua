-- Enable filetype plugins and syntax highlighting
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

-- Use new regex engine (re=0)
vim.o.re = 0

-- Line numbers
vim.wo.number = true

-- SpellBad highlight (uncomment to use)
-- vim.cmd('highlight SpellBad ctermbg=none ctermfg=red')

-- Spell check (disabled in your original config)
-- vim.o.spell = true

-- Paste mode
vim.o.paste = true

-- Invisible characters
vim.opt.listchars = {
  eol = "¬",
  tab = ">·",
  trail = "~",
  extends = ">",
  precedes = "<",
  space = "."
}
-- vim.o.list = true  -- Uncomment if you want to show invisibles

-- Highlight line numbers in blue
vim.cmd("highlight LineNr ctermfg=blue")

-- Indentation
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.tabstop = 2

-- Unbind arrow keys in normal mode
vim.keymap.set("n", "<Up>", "<NOP>")
vim.keymap.set("n", "<Down>", "<NOP>")
vim.keymap.set("n", "<Left>", "<NOP>")
vim.keymap.set("n", "<Right>", "<NOP>")

-- Unbind arrow keys in insert mode
vim.keymap.set("i", "<Up>", "<NOP>")
vim.keymap.set("i", "<Down>", "<NOP>")
vim.keymap.set("i", "<Left>", "<NOP>")
vim.keymap.set("i", "<Right>", "<NOP>")

-- Unbind arrow keys in visual mode
vim.keymap.set("v", "<Up>", "<NOP>")
vim.keymap.set("v", "<Down>", "<NOP>")
vim.keymap.set("v", "<Left>", "<NOP>")
vim.keymap.set("v", "<Right>", "<NOP>")

-- colors - not working
vim.opt.termguicolors = true

-- clipboard
vim.opt.clipboard = "unnamedplus"

-- treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "go" },
  highlight = { enable = true },
  indent = { enable = true },
}

-- lsp
-- require('lspconfig').gopls.setup{}

-- theme
vim.g.tokyonight_style = "night"
vim.cmd([[colorscheme tokyonight]])

