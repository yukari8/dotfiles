"------------------------------------------------
" 検索
"------------------------------------------------
"検索結果ハイライト
set hlsearch

"検索時に大文字小文字を区別しない
set ignorecase

"検索文字に大文字が含まれる場合は区別する
set smartcase

"clipboardの設定
set clipboard=unnamed


"------------------------------------------------
" デザイン 
"------------------------------------------------
"構文を色分け
syntax on

"カラー
colorscheme desert

"行番号
set number

"ルーラー
set ruler

"タブ・改行
set nolist

"タイトル表示
set title

"ステータスラインを常に表示
set laststatus=2

"現在行ハイライト
set cursorline "ハイライトon
highlight cursorline cterm=none "下線
highlight cursorline ctermbg=red "背景色
highlight cursorline ctermfg=black "文字色

"------------------------------------------------
" 画面分割
"------------------------------------------------
"新しいウィンドウを下に開く
set splitbelow

"新しいウィンドウを右に開く
set splitright

"--------------------
" インデント
"--------------------
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

"------------------
" NERDTreeの設定
" vim上で、Ctrl+eでNERDTreeを開くことができる
"------------------
nnoremap <silent><C-e> :NERDTreeToggle<CR>


"--------------------
" バックスペース 
"--------------------
set backspace=indent,eol,start
