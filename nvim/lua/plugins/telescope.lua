return 
  {
    {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',dependencies = { 'nvim-lua/plenary.nvim' },  
   config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
      vim.keymap.set('n', '<leader>so', builtin.live_grep, {})
   end
    },
    {
      'nvim-telescope/telescope-ui-select.nvim', 
       config = function()
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
        require("telescope").load_extension("ui-select")
       end
    }
}
