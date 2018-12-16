
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/unite.vim'
Plugin 'thinca/vim-ref'
Plugin 'thinca/vim-quickrun'
Plugin 'scrooloose/nerdtree'
Plugin 'prettier/vim-prettier'
Plugin 'othree/yajs.vim'
Plugin 'tomasr/molokai'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'

call vundle#end()
filetype plugin indent on     " required!

" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd


" 見た目系
" 行番号を表示
set number
set title

" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
set matchtime=1

set display=lastline

set pumheight=10

" コマンドラインの補完
set wildmode=list:longest

"-----------------------------
" color schema
" ----------------------------

syntax on

colorscheme molokai

highlight Normal ctermbg=none
highlight LineNr ctermfg=grey ctermbg=232
highlight Comment ctermfg=246

"NERDTree short cut command
nnoremap <silent><C-n> :NERDTreeToggle<CR>

" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" 矢印キーを無効にする
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>


