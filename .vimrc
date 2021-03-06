" Watch https://www.youtube.com/watch?v=XA2WjJbmmoM to see how below works:
" FINDING FILES:
" Search down into subfolders
" Provides tab-completion for all file related-tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy
" :b lets you autcomplete any open buffer

" AUTOCOMPLETE:
" The good stuff is documented in |ins-completion|
" HIGHLIGHTS:
" ^ = Ctrl
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" - Use ^n and ^p to go back and forth in the suggestion list

" SNIPPETS:
" Read an empty HTML template and move cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

" BASIC SETUP:
" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

set autoindent
set indentexpr=off
set expandtab
set tabstop=2
set number

" tab size when using '>'
set sw=2
set textwidth=80
set nohls
set noshowmatch
setlocal spell spelllang=en_us
set nospell
set background=dark
autocmd VimEnter * set vb t_vb=

set modeline
set nojoinspaces " pesky 2-spaces after the period thing
set shortmess=AITstW " I hate: naggy dialogs, intros, long messages
set noshowcmd

set nowritebackup
set noswapfile
set nobackup

" don't delete whitespace-only lines leaving insert mode:
inoremap <CR> x<BS><CR>x<BS>
inoremap <up> x<BS><up>
inoremap <down> x<BS><down>
nnoremap o ox<BS>
nnoremap O Ox<BS>

" fuck everything about the 'Press ENTER' message:
set showcmd
set shortmess=at

" 2-space indent for html and json files
autocmd BufRead,BufNewFile *.json,*.html,*.css,*.svg set sw=2 tabstop=2
autocmd BufRead,BufNewFile Makefile,makefile,*Makefile,*makefile set noexpandtab

" adding plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()
