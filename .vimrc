syn on "语法支持
set laststatus=2 "始终显示状态栏
set tabstop=4 "一个制表符的长度
set softtabstop=4 "一个制表符的长度（可以大于tabstop）
set shiftwidth=4 "一个缩进的长度
set expandtab " tab自动转化为空格
set smarttab "智能制表符
set number "显示行号
set ruler "显示位置指示器
set ignorecase "检索时忽略大小写
set hls "检索时高亮显示匹配项
set foldmethod=syntax "代码折叠
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
set autoindent "自动缩进
"set cindent
"set smartindent
set showcmd
set fileencodings=utf-8,gbk
set background=dark
colorscheme solarized
syntax enable
filetype plugin indent on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'jiangmiao/auto-pairs' 
"Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"ctrlp设置
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif

let g:tagbar_width = 33

let g:ycm_python_binary_path = "/usr/local/bin/python3"
" Set the python docstring window not to popup during completion
autocmd FileType python setlocal completeopt-=preview

" Snippets trigger configuration. Do not use <tab> if you use YCM.
let g:UltiSnipsExpandTrigger="<c-j>"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec = '/usr/local/bin/python3'

if has("gui_running")
	"set background=light
	set guifont=Monaco:h12
	set guioptions=
endif
