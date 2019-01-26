" allow loading of plugins and indentation files based on filetype
filetype plugin indent on

syntax enable
set background=dark
colorscheme gruvbox

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
" maintain tab indent
set autoindent
" allow backspacing over all the things in insert mode
set backspace=indent,eol,start
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
" show byte count in visual mode
set showcmd

nnoremap <leader>lc :set list!<cr>

augroup vimrcEx
	autocmd!
	autocmd FileType markdown setlocal textwidth=79 expandtab
	autocmd FileType text setlocal textwidth=79
	autocmd FileType haskell,cabal setlocal nocindent expandtab smarttab ts=2 sts=2 sw=2

	" c/c++ indentation options
	"   l1:  align case block with statement
	"   g0:  aling public/private labels with bracket
	"   N-s: align namespace contents to with bracket
	"   t0:  align function return type and decl if on different lines
	autocmd FileType c,cpp setlocal cindent cinoptions=l1,g0,N-s,t0,(s

augroup end

" edit file in same directory as current file
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>

" easily switch tabs
nnoremap <leader>tn :tabnext<cr>
nnoremap <leader>tp :tabprevious<cr>

" enable spell-checker
nnoremap <silent> <leader>sp :set spell!<CR>

" unmap directional arrows
map <left> <nop>
map <right> <nop>
map <up> <nop>
map <down> <nop>

" Upper-case current work in insert mode
imap <c-u> <esc>muviwU`ua

""""""""""""""""""""""""""""""""""
" PLUGIN-SPECIFIC KEY OPTIONS
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
"	- haskell?
"	- lisp (or use emacs like a normal person?)
