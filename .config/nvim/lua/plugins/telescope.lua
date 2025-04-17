return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-media-files.nvim' -- Add media files extension
  },
  config = function()
    local telescope = require('telescope')
    telescope.setup {
      extensions = {
        media_files = {
          -- Define the filetypes you want to preview
          filetypes = { "png", "jpg", "jpeg", "gif", "pdf" },
          find_cmd = "rg" -- Use ripgrep to find files
        }
      }
    }
    -- Load the media_files extension
    telescope.load_extension('media_files')
  end
}
