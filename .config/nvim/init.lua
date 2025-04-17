-- Change leader key
vim.g.mapleader = ' '

vim.o.showmode = false

-- Display line numbers
vim.opt.number = true

-- Tab and indentation
vim.opt.shiftwidth=2
vim.opt.smarttab = true
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 0

-- File creation confirmation
vim.api.nvim_create_autocmd("BufNewFile", {
    pattern = "*",
    callback = function()
        local filename = vim.fn.expand("%:p")
        print("The file '" .. filename .. "' does not exist. Create it? (y/n)")
        local response = vim.fn.nr2char(vim.fn.getchar())
        if response ~= "y" then
            print("Aborting...")
            vim.cmd("quit!")
        end
    end,
})

-- Lazy plugin manager
require("config.lazy")
