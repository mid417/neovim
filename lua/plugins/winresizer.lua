 return {
    "simeji/winresizer",
  enabled = not vim.g.vscode,
    -- 必要に応じて、特定のキーを押したときだけ読み込む「遅延読み込み」に設定
    keys = {
      { "<C-e>", mode = "n", desc = "Window Resize Mode" },
    },
    config = function()
      -- ここにグローバル変数の設定（後述）を書くこともできます
    end,
  }

