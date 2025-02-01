require("config.lazy")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.opt.swapfile = false
vim.keymap.set("i", "jj", "<esc>")
vim.opt.clipboard = "unnamedplus"


require("mason").setup()
require("mason-lspconfig").setup()

require("mason-lspconfig").setup_handlers({
  function (server_name)
    require("lspconfig")[server_name].setup({})
  end,
})

vim.diagnostic.config()
