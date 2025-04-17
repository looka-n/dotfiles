return {
  'neovim/nvim-lspconfig',
  config = function()
    local lspconfig = require('lspconfig')
    -- Python setup using pyright
    lspconfig.pyright.setup{}
    -- JavaScript/TypeScript setup using tsserver
    lspconfig.ts_ls.setup{}
    -- C/C++
    lspconfig.sourcekit.setup{}
    -- Lua setup using lua_ls
    -- lspconfig.lua_ls.setup({
      -- settings = {
        -- Lua = {
          -- diagnostics = {
            -- globals = {'vim'},
          -- },
        -- },
      -- },
    -- })
  end,
}
