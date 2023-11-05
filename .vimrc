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

inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
