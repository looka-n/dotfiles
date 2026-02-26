return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = { "clangd", "pyright", "ts_ls", "lua_ls" },
      automatic_installation = true,
    })

    vim.lsp.config("clangd", {})
    vim.lsp.config("pyright", {})
    vim.lsp.config("ts_ls", {})
    vim.lsp.config("lua_ls", {})

    vim.lsp.enable("clangd")
    vim.lsp.enable("pyright")
    vim.lsp.enable("ts_ls")
    vim.lsp.enable("lua_ls")
  end,
}
