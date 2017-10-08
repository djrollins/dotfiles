" let tim pope do his magic
execute pathogen#infect()
" allow loading of plugins and indentation files based on filetype
filetype plugin indent on

syntax enable
set background=light
colorscheme PaperColor

let mapleader=","
" TODO: figure out a localleader

" remap old leader to old ","
nnoremap \ ,

" quick loading and sourcing of vimrc
nnoremap <leader>rce :tabedit $MYVIMRC<cr>
nnoremap <leader>rcs :source $MYVIMRC<cr>

""""""""""""""""""""""""""""""""""
" BASIC VIM SETTINGS
""""""""""""""""""""""""""""""""""
" prevent vim from clobbering the scrollback buffer
set t_ti= t_te=
" maintain tab indent
set autoindent
set cindent
set cinoptions=l1
" allow backspacing over all the things in insert mode
set backspace=indent,eol,start
" tabs as 4 spaces by default
set smarttab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" make searches dynamic
set incsearch
" highligh all search occurances
set hlsearch
" disable search highlight on enter
nnoremap <silent> <CR> :nohlsearch<CR><CR>
" highlight current line
set cursorline
" vertical line at 81 columns
set colorcolumn=81
" show position in file
set ruler
" inplace autocomplete menu
set wildmenu
" always show status bar and tab bar
set laststatus=2
set showtabline=2
" current window is always at least 79x5
set winwidth=84
set winheight=5
set winminheight=5
" always some lines above and below the cursor
set scrolloff=3
" disable linewrap
set nowrap
" show line numbers relative to current line
set number
set relativenumber
" show whitespace characters
set listchars=eol:¬,tab:>\ ,trail:~,extends:>,precedes:<
nnoremap <leader>lc :set list!<cr>

augroup vimrcEx
	autocmd!
	autocmd FileType text setlocal textwidth=80
	autocmd FileType markdown setlocal textwidth=80
	autocmd FileType haskell setlocal nocindent | setlocal expandtab
augroup end

" edit file in same directory as current file
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
nmap <leader>ee :edit %%
nmap <leader>es :split %%
nmap <leader>ev :vsplit %%
nmap <leader>et :tabedit %%

" easily switch tabs
nmap <leader>tn :tabnext<cr>
nmap <leader>tp :tabprevious<cr>

" enable spell-checker
nnoremap <silent> <leader>sp :set spell!<CR>

" unmap directional arrows
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>

""""""""""""""""""""""""""""""""""
" PLUGIN-SPECIFIC KEY BINDINGS
""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<leader>f'
let g:ctrlp_working_path_mode = '0'

" LOAD PLATFORM-SPECIFIC VIMRC

if filereadable(expand("~/.platform_vimrc"))
	source ~/.platform_vimrc
endif

"	open files in current directory
"	setup language environments for:
"	- c/c++
"	- rust
"	- apex (yuck)
"	- haskell?
"	- lisp (or use emacs like a normal person?)
