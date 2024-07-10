-- Customize None-ls sources

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, config)
    local null_ls = require "null-ls"

    config.sources = {
      null_ls.builtins.completion.spell,
      null_ls.builtins.diagnostics.commitlint,
      null_ls.builtins.diagnostics.dotenv_linter,
      null_ls.builtins.diagnostics.markdownlint,
      null_ls.builtins.diagnostics.mypy,
      null_ls.builtins.diagnostics.spectral,
      null_ls.builtins.diagnostics.sqlfluff.with {
        extra_args = { "--dialect", "postgres" },
      },
      null_ls.builtins.formatting.markdownlint,
      null_ls.builtins.formatting.sqlfluff.with {
        extra_args = { "--dialect", "postgres" },
      },
      null_ls.builtins.formatting.stylua,
    }

    return config -- return final config table
  end,
}
