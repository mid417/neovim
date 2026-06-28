-- lazy.nvim（本体）がなければ自動でダウンロードしてくる設定
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 「lua/plugins」フォルダの中身を自動で読み込む設定
require("lazy").setup("plugins")

local is_vscode = vim.g.vscode ~= nil

-- 日本語ヘルプをデフォルトに設定する
vim.opt.helplang = 'ja'

if not is_vscode then
  vim.opt.syntax = 'on'
  vim.opt.number = true
  vim.opt.relativenumber = true
  vim.opt.cursorline = true
end

vim.opt.clipboard=unnamed



-- 背景を透過する関数
if not is_vscode then
  local function transparent_background()
    local highlights = {
      "Normal", "NormalFloat", "NormalNC", "SignColumn",
      "LineNr", "CursorLineNr", "Folded", "NonText", "SpecialKey"
    }
    for _, group in ipairs(highlights) do
      vim.api.nvim_set_hl(0, group, { bg = "none" })
    end
  end

  -- カラースキーム適用の後に実行されるように autocmd を設定
  vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = transparent_background,
  })

  -- 既にカラースキームが読み込まれている場合のために即時実行
  transparent_background()
end


