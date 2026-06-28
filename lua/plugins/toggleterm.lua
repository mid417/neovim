return {
  "akinsho/toggleterm.nvim",
  enabled = not vim.g.vscode,
  version = "*", -- 最新の安定版を使用
  config = function()
    local function set_terminal_keymaps(bufnr)
      local opts = { buffer = bufnr }
      vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts) -- Escでターミナルモードを抜ける
      vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts) -- 左のウィンドウへ
      vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts) -- 下のウィンドウへ
      vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts) -- 上のウィンドウへ
      vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts) -- 右のウィンドウへ
    end

    require("toggleterm").setup({
      -- 起動用のショートカット（Ctrl + \）
      open_mapping = [[<C-\>]],
      -- ターミナルを開いたときにバッファローカルのキーマップを設定
      on_open = function(term)
        set_terminal_keymaps(term.bufnr)
      end,
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

