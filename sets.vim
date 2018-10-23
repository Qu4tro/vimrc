set nocompatible "Use Vim settings, rather then Vi settings.
set background=dark

set autowrite        "
set autowriteall     "
set hidden           "

set tags=.tags;      "autotags writes to .tags
set nomodeline       "Disable modelline, per-file settings
set lazyredraw       "Only draw when needed. Macros are way slower without
set relativenumber   "The best kind of numbers
set showmatch        "Show matching bracket
set cursorline       "Highlight current line
set scrolloff=4      "Context lines around cursor. 4 is too low?
" set showcmd          "Show active modifiers

set wildignorecase   "Ignore case on wildmenu
set wildmode=full


set timeoutlen=500   "Halved default timeout for a faster whichkey

"NoSwapFiles
set noswapfile
set nobackup
set nowb

"Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab        "Tabs not welcome

"Folding
set foldmethod=indent
set foldnestmax=5
set foldlevelstart=99
set foldcolumn=0 "??

"Search
set ignorecase       "Ignore case when searching
set smartcase        "Only ignore case when searching term is in lowercase"

"Splits
set splitbelow       " Horizontal split below current.
set splitright       " Vertical split to right of current.

if has('persistent_undo')
    silent !mkdir ~/.vim/undo > /dev/null 2>&1
    set undodir=~/.vim/undo
    set undofile
    set undolevels=1000
endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
" let g:formatdef_sql = '"sqlformat --reindent --keywords upper --identifiers lower --comma_first True --use_space_around_operators"'
" let g:formatters_sql = ['sql']


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_c_compiler_options = '-Wall -Wextra'


augroup AutoWrite
    autocmd! BufLeave * :update
augroup END

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
