# dotfiles/nvim

## Installation (with home-manager)

you don't need to do anything, just run `home-manager -f home-manager/home.nix switch`

## Installation (standalone)

Install Neovim

https://github.com/neovim/neovim/releases

Create Symbolic link

```sh
ln -s $PWD/nvim ~/.config/nvim
```

# Installed Plugins

## https://github.com/nvim-lua/plenary.nvim
わからん

## https://github.com/nvim-lualine/lualine.nvim
下にステータスバーを表示するプラグイン

## https://github.com/windwp/nvim-autopairs
わからん

## https://github.com/nvim-tree/nvim-web-devicons
ファイル名の隣にアイコンを表示するプラグイン

## https://github.com/akinsho/bufferline.nvim
タブっぽくバッファを表示するプラグイン。
タブの切り替えはTabまたはCtrl + PageUp/PageDownで行う。

## https://github.com/neovim/nvim-lspconfig
LSPを設定できるプラグイン

## https://github.com/williamboman/nvim-lsp-installer
LSPを簡単にインストールするためのプラグイン

## https://github.com/jose-elias-alvarez/null-ls.nvim
わからん

## https://github.com/glepnir/lspsaga.nvim
TS用の、定義ジャンプやドキュメント表示などのプラグイン

## https://github.com/nvim-treesitter/nvim-treesitter
言語ハイライト

## https://github.com/windwp/nvim-ts-autotag
わからん

## https://github.com/MunifTanjim/prettier.nvim
保存時に自動でフォーマットするプラグイン

## https://github.com/nvim-telescope/telescope.nvim
最高の検索ツール。
Ctrl + pでファイル検索、Ctrl + gでgrep検索など。
検索窓の中でoまたはtで別タブで開く。Enterでは現在のタブで開く。

## https://github.com/nvim-telescope/telescope-file-browser.nvim
telescopeでファイラーを開くためのプラグイン。
Ctrl + nでファイラーを開く。
ファイラー上でcでファイル作成、yでコピー、rで移動、dで削除など。

## https://github.com/lambdalisue/fern.vim
ファイラー。nnで左側にファイラーが出てくる。
Nでファイル追加、Kでディレクトリ追加など。

## https://github.com/lambdalisue/fern-hijack.vim
デフォルトのnetrwをfernに変更するプラグイン

## https://github.com/folke/tokyonight.nvim
カラースキーム

## https://github.com/dinhhuy258/git.nvim
gitの状態を表示するプラグイン よくわからん

## https://github.com/lewis6991/gitsigns.nvim
行番号のところにgitの状態を表示するプラグイン

## https://github.com/kylechui/nvim-surround
カッコで囲むプラグイン

## https://github.com/glidenote/memolist.vim
MemoListをvimで操作するプラグイン
:MemoList, :MemoNew等

## https://github.com/mattn/vim-gist
github gistをvimで操作するプラグイン
:Gist, :Gist -l 等

## https://github.com/nvim-telescope/telescope-github.nvim
TeleScopeでgithubを検索するプラグイン

## https://github.com/github/copilot.vim
Github Copilotをvimで使うプラグイン。
:Copilot setupで設定する。

