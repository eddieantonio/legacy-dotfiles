" THE GRANDE, ALMIGHTY MAP FILE
" Author: Eddie Antonio Santos <easantos@ualberta.ca>

" Don't use Ex mode, use Q for formatting
vnoremap Q gq
nnoremap Q vipgq

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" So U No when U Get UPSET when a mapping is removed from vimSensible
" and U Quickly go to salvage it?
nnoremap Y y$

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Hide highlighting with enter
nnoremap <silent> <CR> :nohlsearch<CR>

" Search and replace word under cursor -- 'a' means 'alter'
nnoremap <Leader>sr :%s/\<<C-r><C-w>\>//g<Left><Left>
nnoremap <Leader>sa :%s/\<<C-r><C-w>\>//g<Left><Left><C-r><C-w>

" Toggle some commonly used things
nmap <Leader>l :set list!<CR>
nmap <Leader>n :set number!<CR>
set pastetoggle=<F2>

" Quick set spell.
nnoremap <Leader>sp :set spell!<CR>

" Vim-Dispatch, I guess...
nnoremap <Leader>m :Make<CR>

" Using vim-preserve
" Strip all trailing whitespace in a file
nmap <Leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
" Reformat the entire file
nmap <Leader>= :call Preserve("normal gg=G")<CR>
" Reformat the entire file
nmap <Leader>y :call Preserve("normal gg\"+yG")<CR>

" Copy some lines into the OS X clipboard
vnoremap <silent> <Leader>y :!pbcopy<CR>u
nmap <silent> <Leader>%y :!pbcopy %

" Vi. Live it.
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" When I want 2-space tabs!
noremap <Leader>2 :set ts=2 sts=2 sw=2 et<CR>
