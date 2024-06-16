-- Setup Icon Picker
require("icon-picker").setup {}
-- Setup HLChunk
require("hlchunk").setup {
  exclude_filetypes = {
    aerial = true, -- Exclude aerial filetypes
    dashboard = true, -- Exclude dashboard filetypes
    NvimTree = true, -- Exclude NvimTree filetype
  },
  support_filetypes = { -- Supported filetypes for HLChunk
    "*.lua",
    "*.js",
    "*.jsx",
    "*.py",
    "*.html",
    "*.css",
    "*.java",
    "*.c",
    "*.cpp",
    "*.json",
    "*.php",
    "*.go",
    "*.rb",
    "*.rs",
  },
  indent = {
    --uncomment the line below if you like indentation line rainbows.
    --enable = true, --true or false
    support_filetypes = { -- Supported filetypes for indent
      "*.lua",
      "*.js",
      "*.jsx",
      "*.py",
      "*.html",
      "*.css",
      "*.java",
      "*.c",
      "*.cpp",
      "*.json",
      "*.go",
      "*.rb",
      "*.php",
      "*.rs",
    },
    chars = { "▍" }, -- Indentation characters
    style = { -- Indentation styles
      "#00ff00",
      "#ff00ff",
      "#fff000",
      "#8D00FF",
      "#00ffff",
      "#000fff",
    },
  },
  chunk = {
    enable = true, --true or false
    support_filetypes = { -- Supported filetypes for chunk
      "*.lua",
      "*.js",
      "*.jsx",
      "*.py",
      "*.html",
      "*.css",
      "*.java",
      "*.c",
      "*.cpp",
      "*.json",
      "*.go",
      "*.rb",
      "*.php",
      "*.rs",
    },
    chars = {
      horizontal_line = "─",
      vertical_line = "│",
      left_top = "┌",
      left_bottom = "└",
      right_arrow = "─",
    },
    style = "#00FF00", -- Chunk style
  },
  line_num = {
    style = "#FF0000", -- Line number style
  },
}

-- Setup EasyColor
require("easycolor").setup {
  default_config = {
    ui = {
      border = "rounded", -- Border style
      symbols = {
        selection = "󰆢", -- Symbol to draw over selected color
        hue_arrow = "◀", -- Arrow next to selected hue
      },
      mappings = { -- Key mappings
        q = "close_window",
        j = "move_cursor_down",
        k = "move_cursor_up",
        h = "move_cursor_left",
        l = "move_cursor_right",
        ["<Down>"] = "hue_down",
        ["<Up>"] = "hue_up",
        ["<Enter>"] = "insert_color",
        t = "edit_formatting_template",
      },
    },
    formatting = {
      default_format = "$X", -- Default formatting template
    },
  },
}

-- Setup Easypick
local easypick = require "easypick"

local base_branch = "develop" -- Base branch for Git operations

easypick.setup {
  pickers = {
    {
      name = "ls", -- List files picker
      command = "ls",
      previewer = easypick.previewers.default(),
    },
    {
      name = "changed_files", -- Changed files picker
      command = "git diff --name-only $(git merge-base HEAD " .. base_branch .. " )",
      previewer = easypick.previewers.branch_diff { base_branch = base_branch },
    },
    {
      name = "conflicts", -- Conflicts picker
      command = "git diff --name-only --diff-filter=U --relative",
      previewer = easypick.previewers.file_diff(),
    },
  },
}

-- Setup TODO Comments
require("todo-comments").setup {
  signs = true,
  sign_priority = 8,
  keywords = { -- Keywords for TODO comments
    FIX = { icon = " ", color = "#DC2626", alt = { "FIXME", "BUG", "FIXIT", "ISSUE" } },
    OUTPUT = { icon = " ", color = "#484646", alt = { "RESULT" } },
    TODO = { icon = " ", color = "#4CFBFF" },
    HACK = { icon = " ", color = "#622222" },
    WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    PERF = { icon = " ", color = "#68009F", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    NOTE = { icon = " ", color = "#3686FF", alt = { "INFO" } },
    TEST = { icon = "", color = "#FFFD03", alt = { "TESTING" } },
    PASSED = { icon = " ", color = "#00FF00" },
    FAILED = { icon = " ", color = "#DC2626" },
  },
  gui_style = {
    fg = "BOLD", -- GUI style for foreground
    bg = "BOLD", -- GUI style for background
  },
  merge_keywords = true,
  highlight = {
    multiline = true,
    multiline_pattern = "^.",
    multiline_context = 10,
    before = "",
    keyword = "wide",
    after = "fg",
    pattern = [[.*<(KEYWORDS)\s*:]],
    comments_only = true,
    max_line_len = 400,
    exclude = {},
  },
  search = {
    command = "rg",
    args = {
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
    },
    pattern = [[\b(KEYWORDS):]],
  },
}

-- Setup Telescope
require("telescope").setup {}

-- Setup Colorizer
require("colorizer").setup {}

-- Setup Noice
require("noice").setup {
  lsp = {
    enabled = false,
    hover = {
      enabled = false,
    },
    signature = {
      enabled = false,
    },
  },
}

-- Setup Nvim-Tree
require("nvim-tree").setup {
  renderer = {
    icons = {
      glyphs = {
        default = " ",
        symlink = " ",
        git = {
          unstaged = "",
          staged = "",
          unmerged = "",
          renamed = "",
          deleted = "",
          untracked = "",
          ignored = "",
        },
        folder = {
          default = " ",
          open = " ",
          empty = " ",
          empty_open = " ",
          symlink = " ",
        },
      },
    },
  },
}
require("trouble").setup()
