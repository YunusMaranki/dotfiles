vim.g.mapleader = " "

vim.cmd [[packadd packer.nvim]]

require("plugins")
require("remaps")
require("treesitter")

vim.cmd("nnoremap S :%s//g<Left><Left>")
vim.cmd("set number")
vim.cmd("colorscheme base16-onedark")
require('lualine').setup()

---lsp
local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
