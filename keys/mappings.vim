" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Better Navigation
nnoremap qq i
nnoremap j h
nnoremap k j
nnoremap i k

" Navigation INSERT MODE
inoremap <A-j> <Left>
inoremap <A-k> <Down>
inoremap <A-i> <Up>
inoremap <A-l> <Right>


inoremap <A-h> <C-o>b
inoremap <A-o> <C-o>w
inoremap <A-ç> <C-o>e<C-o>l

" Use alt + hjkl to resize windows
nnoremap <A-j>    :resize -2<CR>
nnoremap <A-k>    :resize +2<CR>
nnoremap <A-h>    :vertical resize -2<CR>
nnoremap <A-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap qq <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

