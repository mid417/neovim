return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      -- 左端のサイン列に表示される記号の設定
      signs = {
        add          = { text = '┃' },
        change       = { text = '┃' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      -- Git blame（カーソル行のコミット情報を右側に薄く表示する機能）を有効化
      current_line_blame = true, 
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 行末に表示
        delay = 500,           -- カーソルを合わせてから表示されるまでの時間（ミリ秒）
      },
    })
  end
}
