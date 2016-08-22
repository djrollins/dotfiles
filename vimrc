" let tim pope do his magic
execute pathogen#infect()
" allow loading of plugins and indentation files based on filetype
filetype plugin indent on

syntax enable
set background=light
colorscheme solarized

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
" prevent vim from clobbering the scrollback buffer
set t_ti= t_te=
" maintain tab indent
set autoindent
" allow backspacing over all the things in insert mode
set backspace=indent,eol,start
" tabs as 4 spaces by default
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" make searches dynamic
set incsearch
" highlight current line
set cursorline
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
" always some lines above and below the cursor
set scrolloff=3
" show line numbers relative to current line
set number
set relativenumber
" show whitespace characters
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

"   open files in current directory
"   setup language environments for:
"       - c/c++
"       - rust
"       - apex (yuck)
"       - haskell?
"       - lisp (or use emacs like a normal person?)
