return {
  "mfussenegger/nvim-lint",
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "pylint" },
      javascript = { "eslint" },
      cpp = { "cpplint" },
    }

    -- Run linter whenever you save
    vim.api.nvim_create_autocmd({ "BufWritePost" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
