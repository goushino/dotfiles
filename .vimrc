" シェルの指定
set shell=/bin/zsh

" encoding
set encoding=utf8
scriptencoding utf8

" スワップファイルの作成先を変更
set noswapfile

" ヤンクをクリップボードへ繋ぐ
set clipboard=unnamed

" ビープ音を消す
set belloff=all

" 表示
set number
set title
set cursorline

" インデント
filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set autoindent
set smartindent
set shiftwidth=2
set list listchars=tab:»-,trail:-,eol:↵,extends:»,precedes:«,nbsp:% 

" 挿入モードでバックスペース削除を有効
set backspace=indent,eol,start

" 検索
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR>

" 画面分割
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" , キーで次タブのバッファを表示
nnoremap <silent> , :bprev<CR>
" . キーで前タブのバッファを表示
nnoremap <silent> . :bnext<CR>
" bdで現在のバッファを削除
nnoremap bd :bd<CR>

" ====== dein.vim plugin manager ======

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '/home/goushino/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/home/goushino/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" tomlセット
let s:toml_dir=expand('~/.dein/')
let s:toml=s:toml_dir . 'dein.toml'
let s:toml_lazy=s:toml_dir . 'dein-lazy.toml'

" プラグインのロード
if dein#load_state(s:dein_base)
  " Call Dein initialization (required)
  call dein#begin(s:dein_base)

  call dein#load_toml(s:toml)
  call dein#load_toml(s:toml_lazy, {'lazy': 1})

  call dein#end()
  call dein#save_state()
endif

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" ====== dein.vim ここまで ======

