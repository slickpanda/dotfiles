" Define leader keys
let mapleader = ','

set backspace = 2 " Normal backspace behaviour
set nobackup
set nowritebackup
set ruler " Show cursor position
set showcmd
set incsearch
set laststatus = 2
set autowrite

" Global config
let mapleader = ","
set showcmd
set wildmenu
set noswapfile
set nobackup
set nofoldenable
set nowb
set t_Co=256

set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
    syntax on
endif

set nocompatible
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

set ttimeoutlen = 30

set nu " Set numbers
set relativenumber " Set relative number

" Switch between the last two files
nnoremap <leader><leader> <c-^>

set splitbelow
set splitright

set complete+=kspell

call vundle#begin()
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'ervandew/supertab'
Bundle 'georoot/gist-vim'
Bundle 'roman/golden-ratio'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'honza/vim-snippets'
Plugin 'jmcomets/vim-pony'
Plugin 'junegunn/vim-easy-align'
Plugin 'kien/ctrlp.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'mileszs/ack.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'whatyouhide/vim-gotham'
call vundle#end()

set complete=.,b,u,]
set completeopt=menu,preview

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<S-tab>"

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

set completeopt=longest,menuone

filetype off
filetype plugin indent on
syntax on

" Split window controls
nnoremap <S-j> <C-W>j
nnoremap <S-k> <C-W>k
nnoremap <S-h> <C-W>h
nnoremap <S-l> <C-W>l

" Gist configuration
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:gist_show_privates = 1
let g:gist_get_multiplefile = 1
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 0

" Motion controls
nnoremap j gj
nnoremap k gk
let g:EasyMotion_leader_key = 's'

" Document controls
inoremap jj <esc>

" Indentation
set autoindent
set smartindent
set tabstop=4
set softtabstop=0 expandtab
set shiftwidth=4


" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_jslint_checkers=['eslint']
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

set statusline=[%n]\ %<%.99f\ %h%w%m%r%{SL('CapsLockStatusline')}%y%{SL('fugitive#statusline')}%#ErrorMsg#%{SL('SyntasticStatuslineFlag')}%*%=%-14.(%l,%c%V%)\ %P

" C-p Index only files added to git
let g:ctrlp_show_hidden=0
let g:ctrlp_clear_cache_on_exit=0
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set wildignore+=*/env/*,env/**,build/**,*/build/*
set wildignore+=*/node_modules/*,node_modules/**
set wildignore+=*.sqlite3
set wildignore+=Session.vim
set wildignore+=*.pyc

source '~/.vim/secret.vim'
