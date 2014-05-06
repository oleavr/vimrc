filetype on
filetype off

set rtp+=/Library/Python/2.7/site-packages/Powerline-beta-py2.7.egg/powerline/bindings/vim
let g:syntastic_javascript_checkers=['jshint']
let g:syntastic_javascript_jshint_conf="/Users/oleavr/src/soundrop/soundrop-next/.jshintrc"
let g:syntastic_c_no_default_include_dirs = 1
let g:syntastic_c_no_include_search = 1
let g:syntastic_c_config_file = '/Users/oleavr/.syntastic_c_config'
let g:syntastic_cpp_no_default_include_dirs = 1
let g:syntastic_cpp_no_include_search = 1
let g:syntastic_cpp_config_file = '/Users/oleavr/.syntastic_c_config'
runtime bundle/unbundle/unbundle.vim
runtime! config/**/*.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
syntax on

set nocompatible
set nobackup
set encoding=utf-8

set backspace=indent,eol,start
set noerrorbells visualbell t_vb= " Disable all bells
set guifont=Source\ Code\ Pro\ for\ Powerline:h11
" autocmd BufEnter * lcd %:p:h " Automatically change the pwd to the pwd of the buffer


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme/Colors
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number              " turn on line numbers
set ruler               " show the ruler for monitoring the line width
set hid                 " you can change buffer without saving
set mouse=a             " use mouse everywhere
set shortmess=atI       " shortens messages to avoid 'press a key' prompt 
set report=0            " tell us when anything is changed via :...
set noerrorbells        " don't make noise
set laststatus=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch           " show matching brackets
set mat=5               " how many tenths of a second to blink matching brackets for
set incsearch           " search as you type
set hls noignorecase    " Highlight search
set list listchars=tab:>·,extends:> " display tabs
" Display spaces
highlight Whitespace ctermbg=darkcyan guibg=darkcyan
syntax match Whitespace /\s\+$/
autocmd BufEnter * match Whitespace /\s\+$/
autocmd InsertEnter * match WhiteSpace /\s\+\%#\@<!$/
autocmd InsertLeave * match WhiteSpace /\s\+$/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set fo=tcrqn            " See Help (complex)
set ai                  " autoindent
"set si                  " smartindent
"set tabstop=8           " tab spacing (settings below are just to unify it)
"set softtabstop=2       " unify
"set shiftwidth=2        " unify
"set expandtab
set nowrap              " do not wrap lines
"set smarttab            " use tabs at the start of a line, spaces elsewhere


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keyboard shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","
nmap ; :CtrlPBuffer<CR>
nmap \e :NERDTreeToggle<CR>
nmap \q :nohlsearch<CR>
nmap \o :set paste!<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Completion/Wildcards
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*.so,*.o,*.a,*.la,*.class,*.obj,.git,*.beam,*.mo,*.swp,*.jpg,*.png,*.xpm,*.gif,*.pyc
set wildmenu

set completeopt=menu,longest
