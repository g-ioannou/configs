au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vim

" ---------------------Plugins---------------------------

call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline-themes'
Plug '907th/vim-auto-save'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

"-----------------------themes-----------------------------
" colorscheme gruvbox
colorscheme molokai

"---------------------- basic settings --------------------
set hidden  " Required to keep multiple buffers open multiple buffers
set relativenumber " set realtive line numbers
set splitbelow  " Horizontal splits will automatically be below
set splitright  " Vertical splits will automatically be to the right
set t_Co=256   " Support 256 colors
set formatoptions-=cro " Stop newline continution of comments
set autoindent   " Good auto indent
set scrolloff=7 " Minimal number of screen lines to keep above and below the cursor.
let g:rehash256 = 1 " colors closer to black 
let g:auto_save = 1 " enable auto saving with vim-auto-save
"-----------------------Plugins config-----------------------

" deoplete config
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif " Close preview window automatically 

" navigete through the auto-completion list with TAB
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"   

" neomeake config
let g:neomake_python_enabled_makers = ['pylint'] " Python linter
call neomake#configure#automake('nrwi',500) " call neomake every 500ms

" jedi config
let g:jedi#completions_enabled = 0 " disable autocompletion, using deoplete
let g:jedi#use_splits_not_buffers = "right" " open the go-to function in split, not another buffer

" airline config
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

