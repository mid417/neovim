return {
  -- Copilot 本体 (Lua版)
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = true, auto_trigger = true },
        panel = { enabled = false },
      })
    end,
  },
  -- Copilot チャット機能
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      -- 日本語で返答させたい場合のプロンプト指定
      system_prompt = "ユーザーの質問に日本語で答えてください。",
      model = 'auto', -- 使用したいAIモデル（設定可能な場合）
      auto_insert_mode = true, -- チャットを開いたときに自動でインサートモードに入る      
    },
    cmd = { "CopilotChat", "CopilotChatOpen", "CopilotChatToggle" },
  },
}

