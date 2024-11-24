return {
  'nvim-treesitter/nvim-treesitter', build =':TSUpdate',
   config = function()
      local treeSitterConfig = require("nvim-treesitter.configs")
      treeSitterConfig.setup({
        auto_install = true,
        highlight = {enable = true},
        indent = {enable = true},
      })
   end
}
