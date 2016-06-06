set tabstop=2
set shiftwidth=2
set expandtab

" for neovim 0.1.5
" set termguicolors

" Show number of lines
set number
set relativenumber

" OS clipboard integration
set clipboard+=unnamedplus

" Mapping switch between buffers and tabs

nnoremap <C-K> <C-W>K
nnoremap <C-J> <C-W>J
nnoremap <C-L> <C-W>L
nnoremap <C-H> <C-W>H
nnoremap <S-K> <C-W>k
nnoremap <S-J> <C-W>j
nnoremap <S-L> <C-W>l
nnoremap <S-H> <C-W>h

noremap <Tab> :tabnext<CR>
noremap <S-Tab> :tabprevious<CR>

noremap <Leader>r :SyntasticReset<CR>
noremap <Leader>c :SyntasticCheck<CR>

tnoremap <Leader>e <C-\><C-n>

" Open shell in a new buffer with/out exec command
:command! -nargs=* Tv :vertical rightbelow sv | te <args>
:command! -nargs=* T :rightbelow sv | te <args>

au! BufRead,BufNewFile *.styl setfiletype stylus
au! BufRead,BufNewFile *.jsx setfiletype javascript

autocmd InsertEnter * :set norelativenumber
autocmd InsertLeave * :set relativenumber

" Install plugins
call plug#begin('~/.vim/bundle')

Plug 'sheerun/vim-polyglot'
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
" Use this commit while have bug with arrow function syntax
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
", 'commit': 'd8c18d9' }
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'terryma/vim-multiple-cursors'
Plug 'NLKNguyen/papercolor-theme'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rking/ag.vim'
Plug 'mbbill/undotree'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'moll/vim-node'

Plug 'scrooloose/syntastic'
Plug 'vim-scripts/vim-auto-save'
Plug 'tpope/vim-unimpaired'
Plug 'ntpeters/vim-better-whitespace'

" Maybe need
"Plug 'wavded/vim-stylus', { 'for': 'stylus' }
"Plug 'mattn/emmet-vim', { 'for': 'html' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
"Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
"Plug 'guns/vim-clojure-highlight', { 'for': 'clojure' }

call plug#end()

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
nnoremap <F5> :UndotreeToggle<cr>
nnoremap <F2> :NERDTreeToggle<cr>

nmap <Leader>gs  :Gstatus<cr>
nmap <Leader>gc  :Gcommit<cr>i
nmap <Leader>gps :Gpush<cr>
nmap <Leader>gpl :Gpull<cr>

nmap <Leader>p :CtrlP<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/\.git/*,*/node_modules/*

let g:polyglot_disabled = ['javascript', 'jsx']

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline_theme='powerlineish'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 0
let g:syntastic_full_redraws = 0

let g:syntastic_error_symbol = ""
let g:syntastic_warning_symbol = ""

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_javascript_eslint_args = '--parser=babel-eslint'

let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

set background=dark
colorscheme PaperColor

hi SyntasticErrorSign ctermfg=124
hi SyntasticWarningSign ctermfg=178
hi SyntasticError ctermbg=052 cterm=undercurl
hi SyntasticWarning ctermbg=058 cterm=undercurl
