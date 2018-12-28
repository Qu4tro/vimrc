nnoremap º :bprev<CR>
nnoremap ~ :bnext<CR>

nnoremap <CR> za
nnoremap Q @q
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap j gj
nnoremap k gk
nnoremap q: :q
nnoremap !! :%!

xnoremap <leader>y "+y
xnoremap <leader>p "+p
xnoremap <leader>P "+P

nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

nnoremap <leader>. :
nnoremap <leader>w :w<CR>

nnoremap <silent> <leader><Bar> <c-w>v
nnoremap <silent> <leader>- <c-w>s
nnoremap <silent> <leader>q <c-w>q

nnoremap <silent> <leader>l <c-w>l
nnoremap <silent> <leader>h <c-w>h
nnoremap <silent> <leader>j <c-w>j
nnoremap <silent> <leader>k <c-w>k

nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :Commits<CR>
nnoremap <leader>fd :BTags<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fg :GFiles?<CR>
nnoremap <leader>fh :History<CR>
nnoremap <leader>fl :Locate 
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fr :Rg 
nnoremap <leader>fs :Snippets<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fx :Filetypes<CR>

nnoremap <leader>ti :IndentLinesToggle<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>tg :Goyo<CR>
nnoremap <leader>tb :let &background = ( &background == "dark" ? "light" : "dark" )<CR>
nnoremap <Leader>tl :Limelight!!<CR>

xnoremap <Leader>vl <Plug>(Limelight)

nmap <leader>th <plug>(QuickScopeToggle)

nnoremap <leader>cy "+y
nnoremap <leader>cp "+p
nnoremap <leader>cP "+P

nnoremap <leader>mb :center 72<CR>hhv0r#A<SPACE><ESC>36A#<ESC>d72<BAR>YppVr#kk.

xmap - <Plug>(expand_region_shrink)

let g:UltiSnipsExpandTrigger="<tab>"

