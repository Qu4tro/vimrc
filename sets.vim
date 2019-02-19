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
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
set viminfo+=n~/.vim/viminfo


let g:startify_bookmarks = [
  \ { 'v': '$MYVIMRC' },
  \ ]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Range of greys (from black to white): [232, 255]
let g:limelight_conceal_ctermfg = 237

let g:which_key_map =  {}

let g:which_key_map.f = { 'name' : 'fzf' }

let g:which_key_map.p = { 'name' : 'pane' }
let g:which_key_map.p = {
      \ 'name' : 'pane',
      \ 'q' : 'window-quit',
      \ '-' : 'split-horizontal',
      \ '|' : 'split-vertical',
      \ 'h' : 'goto-left',
      \ 'j' : 'goto-down',
      \ 'k' : 'goto-up',
      \ 'l' : 'goto-right',
    \ }

let g:which_key_map.m = { 'name' : 'misc' }
let g:which_key_map.m.b = 'box#'

let g:which_key_map.t = { 'name' : 'toggle' }
let g:which_key_map.t.b = 'background'
let g:which_key_map.t.g = 'goyo'
let g:which_key_map.t.l = 'limelight'
let g:which_key_map.t.h = 'quickscope'
let g:which_key_map.t.i = 'indent-lines'
let g:which_key_map.t.t = 'tagbar'

let g:which_key_map.y = { 'name' : 'yank' }
let g:which_key_map.y.p = 'system-clip-paste-before'
let g:which_key_map.y.P = 'system-clip-paste-after'
let g:which_key_map.y.y = 'system-clip-yank'
let g:which_key_map.y.c = 'yank-code'

let g:which_key_map.w = { 'name' : 'save' }


let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
" let g:formatdef_sql = '"sqlformat --reindent --keywords upper --identifiers lower --comma_first True --use_space_around_operators"'
" let g:formatters_sql = ['sql']

let g:sql_type_default = 'pgsql'
let g:netrw_browsex_viewer="xdg-open"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_sh_shellcheck_args="-x"
let g:syntastic_c_compiler_options = '-Wall -Wextra'
let g:syntastic_javascript_checkers = ['eslint']

augroup AutoWrite
    autocmd! BufLeave * :update
augroup END

autocmd! FileType fzf
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4

fun! AutoFormatSpecificFiles()
    if &ft =~ 'javascript'
        :Autoformat
    endif
endfun

au BufWrite * call AutoFormatSpecificFiles()

