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

" BASIC SETUP:

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

set autoindent
set indentexpr=off
set expandtab
set tabstop=4
set number

set sw=4
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
