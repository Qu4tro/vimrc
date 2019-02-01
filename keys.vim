nnoremap º :bprev<CR>
nnoremap ~ :bnext<CR>

nnoremap <CR> za
nnoremap Q @q
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap j gj
nnoremap k gk
nnoremap q: :q
nnoremap !! :%!

call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>

nnoremap <leader>. :

" Panes
nnoremap <silent> <leader>p<Bar> <c-w>v
nnoremap <silent> <leader>p- <c-w>s
nnoremap <silent> <leader>pq <c-w>q
nnoremap <silent> <leader>pl <c-w>l
nnoremap <silent> <leader>ph <c-w>h
nnoremap <silent> <leader>pj <c-w>j
nnoremap <silent> <leader>pk <c-w>k

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

nmap     <leader>th <plug>(QuickScopeToggle)

xnoremap <leader>yy "+y
xnoremap <leader>yp "+p
xnoremap <leader>yP "+P
xnoremap <leader>yP "+P
map      <leader>yc <plug>YankCode

nnoremap <leader>mb :center 72<CR>hhv0r#A<SPACE><ESC>36A#<ESC>d72<BAR>YppVr#kk.

xmap - <Plug>(expand_region_shrink)

let g:UltiSnipsExpandTrigger="<tab>"

