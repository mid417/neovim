return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional file icons
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      default_component_configs = {
        -- Use ASCII symbols to avoid mojibake without Nerd Font.
        icon = {
          folder_closed = "+",
          folder_open = "-",
          folder_empty = " ",
          default = " ",
        },
        indent = {
          with_expanders = true,
          expander_collapsed = ">",
          expander_expanded = "v",
          expander_highlight = "NeoTreeExpander",
        },
        git_status = {
          symbols = {
            added = "A",
            modified = "M",
            deleted = "D",
            renamed = "R",
            untracked = "U",
            ignored = "I",
            unstaged = "!",
            staged = "S",
            conflict = "C",
          },
        },
      },
      window = {
        width = 30, -- tree width
      },
      filesystem = {
        filtered_items = {
          visible = true, -- show dotfiles/gitignored as dimmed
        },
        follow_current_file = {
          enabled = true, -- keep tree cursor synced with current file
        },
      },
    })

    -- Keep Ctrl+t toggle mapping.
    vim.keymap.set('n', '<C-t>', ':Neotree toggle<CR>', { silent = true })
  end,
}
