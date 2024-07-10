-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "luadoc",
      "vim",

      "go",
      "python",
      "bash",
      "html",
      "make",
      "typescript",
      "toml",
      "csv",
      "dockerfile",
      "css",
      "yaml",

      "diff",
      "ssh_config",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
    },
  },
}
