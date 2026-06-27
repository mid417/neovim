# 個人用 Neovim 設定 (Windows)

Windows環境で使うことを想定した、個人用のNeovim設定です。  
プラグイン管理には `lazy.nvim` を使用し、最低限の編集機能と開発補助機能をまとめています。

## 概要

- 対象OS: Windows
- 言語: Lua (`init.lua` + `lua/plugins/*.lua`)
- プラグインマネージャ: `lazy.nvim`
- 主な用途: 日常編集、Git操作補助、ファイルツリー、ターミナル連携、Copilot支援

## フォルダ構成

```text
nvim/
├─ init.lua
├─ lazy-lock.json
├─ README.md
└─ lua/
	└─ plugins/
		├─ ctrlp.lua
		├─ github-copilot.lua
		├─ gitsigns.lua
		├─ neo-tree.lua
		├─ toggleterm.lua
		├─ vimdoc-ja.lua
		└─ winresizer.lua
```

## 主な設定内容

- `lazy.nvim` が未導入なら自動でクローン
- `lua/plugins` 配下のプラグイン設定を自動ロード
- 日本語ヘルプを優先 (`helplang=ja`)
- 行番号 / 相対行番号を有効化
- クリップボード連携 (`clipboard=unnamed`)
- カラースキーム適用後に背景透過を維持

## 導入手順

1. この設定を `~\AppData\Local\nvim` に配置する
2. `nvim` を起動する
3. 初回起動時に `lazy.nvim` とプラグインが自動で取得される

必要に応じて、`:Lazy` でプラグイン状態を確認してください。

## プラグイン一覧

- `ctrlpvim/ctrlp.vim` (ファイル検索)
- `zbirenbaum/copilot.lua` (GitHub Copilot)
- `CopilotC-Nvim/CopilotChat.nvim` (Copilot Chat)
- `lewis6991/gitsigns.nvim` (Git変更表示)
- `nvim-neo-tree/neo-tree.nvim` (ファイルツリー)
- `akinsho/toggleterm.nvim` (統合ターミナル)
- `vim-jp/vimdoc-ja` (日本語ヘルプ)
- `simeji/winresizer` (ウィンドウリサイズ)

## 主なキーマップ

- `Ctrl + t`: Neo-tree のトグル
- `Ctrl + \\`: ToggleTerm の起動/トグル
- `Ctrl + e`: Winresizer モード

## 補足

- プラグインのバージョンは `lazy-lock.json` で固定されています。
