"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 基本設定
"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" ファイルエンコードをUTF-8にする
set fenc=utf-8
" コマンド補完機能を有効にする
set wildmenu
" ファイル編集中に他のファイルを開けるようにする
set hidden
" バックスペースを空白、行末、行頭で使えるようにする
set backspace=indent,eol,start
" 矩形選択時に文字がない所にカーソルが行くようにするのと、行末までカーソルが行くようにする
set virtualedit=block,onemore
" クリップボードにコピー unnamed:normal, autoselect:visual
set clipboard=unnamed,autoselect
" ビープ音を視化。要は鳴らないようにする
set visualbell
" マウスでの操作を可能にする
set mouse=a

"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 表示関連
"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 行番号を表示
set number
" カーソル位置を表示
set ruler
" 構文強調表示を有効にする
syntax enable
" 文字サイズが曖昧な文字を2文字幅に固定する
set ambiwidth=double
" タブの表示幅を2文字に指定
set tabstop=2
" 不可視文字を可視化する
set list
set listchars=tab:>-,trail:-,eol:$,extends:>,precedes:<,nbsp:%
" 現在の行を強調表示
set cursorline
" コマンドの一部を最下行に表示する
set showcmd
" ステータスラインを常に表示
set laststatus=2
" 括弧入力時の対応する括弧を表示
set showmatch

"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 入力補助
"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" タブ入力時に半角スペースを出力する
set expandtab
" 自動インデント時のインデント幅を半角スペース2文字にする
set shiftwidth=2
" Clikeな自動インデントを行う
set smartindent
" 0から始まる文字を8進数と認識しないようにする
set nrformats-=octal

"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 検索補助
"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" リアルタイム検索
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 特殊操作
"_/_/_/_/_/_/_/_/_/_/_/_/_/_/
" 全角文字をハイライト
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme       * call ZenkakuSpace()
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
augroup END
call ZenkakuSpace()

