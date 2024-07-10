-- You can also add or configure plugins by creating files in this `plugins/` folder

---@type LazySpec
return {
  {
    -- Theme!
    "mcchrish/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
  },
  -- Causes visual flash at start.
  {
    -- Apply the theme!
    "f-person/auto-dark-mode.nvim",
    opts = { update_interval = 1000 },
  },
  {
    -- Better function completion
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    -- Float some info about code-fold.
    "nvim-treesitter/nvim-treesitter-context",
    ft = { "python" },
  },
  {
    -- Nicer motions
    "ggandor/leap.nvim",
    dependencies = "tpope/vim-repeat",
  },
  {
    -- Add a marker at 100 chars.
    "lukas-reineke/virt-column.nvim",
    config = function() require("virt-column").setup { virtcolumn = "100" } end,
    ft = { "lua", "python" },
  },
  {
    -- Symbols!
    "simrat39/symbols-outline.nvim",
    config = function() require("symbols-outline").setup() end,
  },
  {
    -- Search and Replace without quickfix
    "windwp/nvim-spectre",
    keys = {
      { "<leader>fZ", "<cmd>lua require('spectre').toggle()<cr>", desc = "Spectre" },
    },
    dependencies = "nvim-lua/plenary.nvim",
  },
  {
    "folke/trouble.nvim",
    event = "BufRead",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function() require("trouble").setup {} end,
  },
  {
    -- gym
    "m4xshen/hardtime.nvim",
    event = "BufRead",
    opts = {
      disable_mouse = false,
      restricted_keys = {},
      disabled_keys = {},
      enabled = false,
    },
  },

  -- == Overriding Plugins ==
  {
    -- jj and jk
    "max397574/better-escape.nvim",
    config = function() require("better_escape").setup { timeout = 500 } end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup {
        filesystem = { use_libuv_file_watcher = true, filtered_items = { visible = true } },
        enable_git_status = false,
      }
    end,
  },
  {
    "rcarriga/nvim-notify",
    event = "BufRead",
    opts = { render = "compact", animation = "fade" },
  },

  -- == Disables ==
  { "L3MON4D3/LuaSnip", enabled = false },
}
