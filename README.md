# 個人用 Neovim 設定 (Windows / VSCode Neovim 対応)

Windows環境を想定した個人用のNeovim設定です。  
プラグイン管理には `lazy.nvim` を使用し、通常のNeovim起動とVSCode拡張 (vscode-neovim) の両方で使えるようにしています。

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

## 起動モード別の挙動

`init.lua` では `vim.g.vscode ~= nil` を使って VSCode 起動かどうかを判定しています。

### 共通 (Neovim / VSCode 両方)

- `lazy.nvim` が未導入なら自動でクローン
- `lua/plugins` 配下のプラグイン設定を自動ロード
- 日本語ヘルプ優先 (`helplang=ja`)
- クリップボード連携 (`clipboard=unnamed`)

### 通常 Neovim 起動時のみ

- `syntax on`
- 行番号 / 相対行番号 (`number`, `relativenumber`)
- カーソルライン表示 (`cursorline`)
- カラースキーム適用後の背景透過

### VSCode (vscode-neovim) 起動時

- 上記の見た目系設定は無効化して、VSCode側表示との干渉を避ける
- 一部プラグインを無効化して、機能重複を回避

## プラグイン一覧

### 常時有効 (Neovim / VSCode)

- `zbirenbaum/copilot.lua` (GitHub Copilot)
- `CopilotC-Nvim/CopilotChat.nvim` (Copilot Chat)
- `lewis6991/gitsigns.nvim` (Git変更表示)
- `vim-jp/vimdoc-ja` (日本語ヘルプ)

### 通常 Neovim のみ有効 (`enabled = not vim.g.vscode`)

- `ctrlpvim/ctrlp.vim` (ファイル検索)
- `nvim-neo-tree/neo-tree.nvim` (ファイルツリー)
- `akinsho/toggleterm.nvim` (統合ターミナル)
- `simeji/winresizer` (ウィンドウリサイズ)

## 主なキーマップ

### 通常 Neovim 起動時

| キー | 動作 |
| --- | --- |
| `Ctrl + t` | Neo-tree のトグル |
| `Ctrl + \\` | ToggleTerm の起動/トグル |
| `Ctrl + e` | Winresizer モード |

## 導入手順

1. この設定を `~\AppData\Local\nvim` に配置する
2. `nvim` を起動する
3. 初回起動時に `lazy.nvim` とプラグインが自動で取得される

必要に応じて、`:Lazy` でプラグイン状態を確認してください。

## VSCode で使う場合

1. VSCode に `vscode-neovim` 拡張をインストールする
2. この設定 (`~\AppData\Local\nvim`) をそのまま利用する
3. VSCode 起動時は `vim.g.vscode` により自動でVSCode向け動作に切り替わる

## 補足

- プラグインのバージョンは `lazy-lock.json` で固定されています。
