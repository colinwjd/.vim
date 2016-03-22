syn on
set laststatus=2
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set ruler
set ignorecase
set hls
set foldmethod=syntax
set bs=2
set mouse=a
set showmatch
set matchtime=1
set cursorline
set nocompatible
set scrolloff=7
set cmdheight=1
set nowrap
set autoread
set foldlevel=100
set nobackup
set noswapfile
set autoindent
"set cindent
"set smartindent
set showcmd
set ttimeoutlen=50
set encoding=utf-8
set fileencodings=utf-8,gbk
set background=dark
colorscheme solarized
syntax enable
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()

" config for vim-indent-guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

" config for ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" config for tagbar
let g:tagbar_width = 33

" config for vim-airline
let g:airline_left_sep = '»'
let g:airline_right_sep = '«'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" config for YouCompleteMe
let g:ycm_python_binary_path = "/usr/local/bin/python3"
" set the python docstring window not to popup during completion
autocmd FileType python setlocal completeopt-=preview

if has("gui_running")
    "set background=light
    set guifont=Monaco:h12
    set guioptions=
endif
