vim.g.base46_cache = vim.fn.stdpath "data" .. "/nvchad/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
    config = function()
      require "options"
    end,
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

-- Disable semantic tokens provider for LSP clients
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
})

-- Source additional configuration files
vim.cmd "source ~/.config/nvim/lua/configs/keymappings.lua"
vim.cmd "source ~/.config/nvim/lua/configs/syntax_highlight.lua"
vim.cmd "source ~/.config/nvim/lua/configs/plugins.lua"

-- Additional Vim commands
vim.cmd [[autocmd FileType * set nowrap]] -- Set an autocmd for all file types to disable line wrapping
vim.cmd [[autocmd FileType * syntax enable]] -- Set an autocmd for all file types to enable syntax highlighting
vim.opt.number = false -- Disable absolute line numbers
vim.opt.relativenumber = false -- Disable relative line numbers
vim.cmd("autocmd FileType python setlocal tabstop=2 shiftwidth=2 expandtab")
