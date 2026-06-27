return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- 綺麗なおしゃれアイコン
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      window = {
        width = 30, -- ツリーの幅
      },
      filesystem = {
        filtered_items = {
          visible = true, -- 隠しファイル（.gitignore等）をデフォルトで薄く表示する
        },
        follow_current_file = {
          enabled = true, -- 開いているファイルにツリーのカーソルを自動で追従させる
        },
      },
    })

    -- キーマップの設定（これまで通り Ctrl + t で開閉する）
    vim.keymap.set('n', '<C-t>', ':Neotree toggle<CR>', { silent = true })
  end
}

