return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function() 
      vim.cmd[[colorscheme tokyonight-night]]
  end
}
-- {
--           "olimorris/onedarkpro.nvim",
--           priority = 1000, -- Ensure it loads first
--           config = function()
--             vim.cmd("colorscheme onedark")
--           end
-- }
-- {
-- 'shaunsingh/nord.nvim',
-- lazy = false,
-- priority = 1000,
-- config = function()
--     -- Example config in lua
--     vim.g.nord_contrast = true
--     vim.g.nord_borders = false
--     vim.g.nord_disable_background = false
--     vim.g.nord_italic = false
--     vim.g.nord_uniform_diff_background = true
--     vim.g.nord_bold = false
--
--     -- Load the colorscheme
--     require('nord').set()
-- end
-- }
