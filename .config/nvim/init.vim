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

" Set <leader> to <Space> key
lua vim.g.mapleader = ' '

" 検索
set ignorecase
set smartcase
set incsearch
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

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

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

inoremap <silent> jj <ESC>

inoremap <C-e> <Esc>$a
inoremap <C-a> <Esc>^a

" ====== dein.vim plugin manager ======

let $CACHE = expand('~/.cache')
if !($CACHE->isdirectory())
  call mkdir($CACHE, 'p')
endif
if &runtimepath !~# '/dein.vim'
  let s:dir = 'dein.vim'->fnamemodify(':p')
  if !(s:dir->isdirectory())
    let s:dir = $CACHE .. '/dein/repos/github.com/Shougo/dein.vim'
    if !(s:dir->isdirectory())
      execute '!git clone https://github.com/Shougo/dein.vim' s:dir
    endif
  endif
  execute 'set runtimepath^='
        \ .. s:dir->fnamemodify(':p')->substitute('[/\\]$', '', '')
endif

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Set Dein base path (required)
let s:dein_base = '~/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '~/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' .. s:dein_src

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
" if has('syntax')
"   syntax on
" endif

if has('termguicolors')
  set termguicolors
  set winblend=10
  set pumblend=10
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

" ====== dein.vim ここまで ======

