" let tim pope do his magic
execute pathogen#infect()
" allow loading of plugins and indentation files based on filetype
filetype plugin indent on

syntax enable
colorscheme elflord

let mapleader=","
" TODO: figure out a localleader

" remap old leader to old ","
nnoremap \ ,

" quick loading and sourcing of vimrc
nnoremap <leader>erc :tabedit $MYVIMRC<cr>
nnoremap <leader>src :source $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""
" BASIC VIM SETTINGS
""""""""""""""""""""""""""""""""""
" maintain tab indent
set autoindent
" allow backspacing over all the things in insert mode
set backspace=indent,eol,start
" tabs as 4 spaces by default
set smarttab
set tabstop=4
set softtabstop=4
set expandtab
" make searches dynamic
set incsearch
" show position in file
set ruler
" inplace autocomplete menu
set wildmenu
" always show status bar and tab bar
set laststatus=2
set showtabline=2
" current window is always at least 79x5
set winwidth=79
set winheight=5
set winminheight=5
" show line numbers relative to current line
set number
set relativenumber
" show whitespace characters
set list
set listchars=eol:¬,tab:>\ ,trail:~,extends:>,precedes:<
nnoremap <leader>lc :set list!<cr>

augroup vimrcEx
        autocmd!
        autocmd FileType text setlocal textwidth=78
augroup end

""""""""""""""""""""""""""""""""""
" PLUGIN-SPECIFIC KEY BINDINGS
""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<leader>f'

" TODO:
"   colourscheme
"   vim-surround
"   open files in current directory
"   setup language environments for:
"       - c/c++
"       - rust
"       - apex (yuck)
"       - haskell?
"       - lisp (or use emacs like a normal person?)
