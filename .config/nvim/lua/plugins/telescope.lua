return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-media-files.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				preview = {
					treesitter = false,
				},
			},
			extensions = {
				media_files = {
					filetypes = { "png", "jpg", "jpeg", "gif", "pdf" },
					find_cmd = "rg",
				},
			},
		})
		telescope.load_extension("media_files")
		telescope.load_extension("fzf")
	end,
}
