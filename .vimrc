set laststatus=2
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).'\|'.&ff.']'}\ \ %l/%L\ (%P)%m%=%{strftime(\"%Y/%m/%d\ %H:%M\")}
 
" 検索文字をハイライト
set hlsearch
" 大文字小文字無視しない
set ignorecase
 
" 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
"set autoindent
 
" ファイル内の <Tab> が対応する空白の数。
":set tabstop=4
 
 
"括弧を入力したときに、カーソルを真ん中へ
inoremap () ()<LEFT>
inoremap [] []<LEFT>
inoremap {} {}<LEFT>
inoremap <> <><LEFT>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
 
 
" netrwをツリー表示に
let g:netrw_liststyle=3
 
" ctpファイルをphpとして色認識
autocmd BufNewFile,BufRead *.ctp set filetype=php
let php_htmlInStrings=1
 
 
 
"autocmd FileType php setlocal expandtab tabstop=4 shiftwidth=4 dictionary=~/.vim/dict/php.dict
"autocmd FileType php setlocal tags+=~/.vim/tags/cakephp_tags
 
"autocmd FileType php setlocal expandtab tabstop=4 shiftwidth=4
"autocmd FileType php setlocal expandtab tabstop=2 shiftwidth=2
autocmd FileType php setlocal tabstop=4 shiftwidth=4
 
"Ctrl +x +k, PHP補完表示
autocmd FileType php setlocal dictionary=~/.vim/dict/php.dict
 
" http://www.asahi-net.or.jp/~wv7y-kmr/memo/vim_php.html
"Ctrl +x +], CAKE補完表示
"Ctrl +w +] CAKEオリジナル関数ファイルに遷移
autocmd FileType php setlocal tags+=~/.vim/tags/cakephp_tags
 
"日本語の米印などに対応
set ambiwidth=double
 
"autocomplpop.vimの色指定
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4
 
 
" 全角スペースを表示させる
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
 
 
 
"4文字以上の入力で、autopopcoml.vimを起動
let g:AutoComplPop_IgnoreCaseOption = 4
let g:AutoComplPop_BehaviorKeywordLength = 4
"CSSは除外 autopopcoml.vim
let g:AutoComplPop_BehaviorCssOmniPropertyLength = -1
let g:AutoComplPop_BehaviorCssOmniValueLength = -1
let g:AutoComplPop_BehaviorHtmlOmniLength = -1

"行番号
set number
 
"文字コード
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis,euc-jp

"ファイル形式
autocmd BufNewFile,BufRead virtualhost.conf set filetype=apache

