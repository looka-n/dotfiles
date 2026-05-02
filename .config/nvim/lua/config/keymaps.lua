-- ============================================
-- General
-- ============================================
vim.keymap.set("n", "<leader>o", ":update<CR>:source<CR>", { desc = "Save & source" })
vim.keymap.set("n", "<leader>w", ":write<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>q", ":quit<CR>", { desc = "Quit" })

-- ============================================
-- Navigation
-- ============================================
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up centered" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Prev search centered" })
vim.keymap.set("n", "<C-f>", ":Telescope current_buffer_fuzzy_find<CR>", { desc = "Search in file" })

-- ============================================
-- Editing
-- ============================================
vim.keymap.set({ "n", "v", "x" }, ";", ":", { desc = "Command mode" })
vim.keymap.set({ "n", "v", "x" }, ":", ";", { desc = "Repeat f/t motion" })

-- ============================================
-- Buffers
-- ============================================
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })

-- ============================================
-- Plugins
-- ============================================
-- NvimTree
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Live grep" })
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Find buffers" })

-- Terminal
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { desc = "Toggle terminal" })
