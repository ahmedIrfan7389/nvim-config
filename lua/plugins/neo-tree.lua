return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", 
    },
    config = function ( )
      require("neo-tree").setup({
        filesystem = {
          filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignored = true,
            hide_by_name = {
              -- add extension names you want to explicitly exclude
              -- '.git',
              -- '.DS_Store',
              -- 'thumbs.db',
            },
            never_show = {},
          },
        },
      
      })
      vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
      vim.keymap.set("n", "<C-b>", "<CMD>Neotree toggle<CR>", {})
    end
	},
}

