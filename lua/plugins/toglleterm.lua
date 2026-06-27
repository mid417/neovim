return {
  "akinsho/toggleterm.nvim",
  version = "*", -- 最新の安定版を使用
  config = function()
    require("toggleterm").setup({
      -- 起動用のショートカット（Ctrl + \）
      open_mapping = [[<C-\>]],
      -- 画面のどこに開くか ('vertical' | 'horizontal' | 'tab' | 'float')
      -- direction = "float", 
      direction = "horizontal", 
      -- フローティングウインドウの見た目の設定
      float_opts = {
        border = "curved", -- 枠線を丸くしてモダンな見た目に
      },
    })
  end
}

