return {
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
    },
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    'MunifTanjim/prettier.nvim',
  },
  {
    'norcalli/nvim-colorizer.lua',
  },
  {
    'gen740/SmoothCursor.nvim',
    config = function()
      require('smoothcursor').setup()
    end
  },
  {
    "karb94/neoscroll.nvim",
    config = function ()
      require('neoscroll').setup {}
    end,
  },
  {
    'preservim/nerdtree',
    'ryanoasis/vim-devicons',
  },
--[[   {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    },
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "echo <api_key>",
      })
    end,
  }, ]]
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
    -- add any options here
    },
    dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    },
  },
  {
    'axkirillov/easypick.nvim',
  },
  {
    "neph-iap/easycolor.nvim",
    dependencies = { "stevearc/dressing.nvim" }, -- Optional, but provides better UI for editing the formatting template
    opts = {},
    keys = {
      { "<leader>b", "<cmd>EasyColor<cr>", desc = "Color Picker" }
    },
  },
  {
    "shellRaining/hlchunk.nvim",
     event = { "UIEnter" },
     config = function()
      require("hlchunk").setup({})
    end,
  },
  {
    "ziontee113/icon-picker.nvim",
    config = function()
      require("icon-picker").setup({
      disable_legacy_commands = false
    })
    end,
  },
  {
    'glepnir/nerdicons.nvim',
    cmd = 'NerdIcons',
    config = function()
      require('nerdicons').setup({})
    end,
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
  			"lua-language-server", "stylua",
  			"html-lsp", "css-lsp" , "prettier",
        "typescript-language-server", "pyright", "cssmodules-language-server",
        "clangd", "bash-language-server", "gopls", "intelephense", "rust_analyzer",
        "solargraph", "jdtls",
  		},
  	},
  },

  {
  	"nvim-treesitter/nvim-treesitter",
    --tag = "v0.8.5.2",
  	opts = {
  		ensure_installed = {
  		 "lua", "vimdoc", "c", "cpp",
       "html", "css", "javascript",
       "bash", "python", "c_sharp",
        "go", "ruby", "rust", "bash",
  		},
  	},
  },
}
