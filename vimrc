set nocompatible               " be iMproved
filetype off                   " required!

let g:dotvim_path='~/.vim/'
let g:dotvim_conf_path=g:dotvim_path . 'configs/'

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

runtime! configs/*.vim
runtime! configs/plugins/*.vim

syntax on
filetype plugin indent on

"GUI Setting
color Tomorrow-Night
set guifont=Menlo\ for\ Powerline:h14
set showtabline=2
set linespace=2
let g:Powerline_symbols = 'fancy'

" Set VIM window settings
if has("gui_running")
  set guioptions-=T  "Remove toolbar
  set transparency=0
  set guioptions=aAce
  set undofile
  autocmd VimResized * wincmd = "Automatically resize splits when resizing MacVim window
endif
