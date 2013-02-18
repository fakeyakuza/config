"encodings
""----------------------
set encoding=utf-8
set fileencoding=utf8
set fileencodings=ucs-bom

"
" display
" " ----------------------
set number
set ruler
set cmdheight=3
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd
set textwidth=80
set columns=80
"lines must be set according to the term settings
set lines=65 "this is for my MBA with iterm2
colorscheme desert
set t_Co=256
set syntax=on 
"
" "fold
" "-------------
set foldmethod=syntax
let perl_fold=1
set foldlevel=100
"
" " edit
" " ---------------------
set autoindent
set cindent
set showmatch
set backspace=indent,eol,start
set clipboard=unnamed
set guioptions+=a

" tab
" " --------------------
set tabstop=4
set expandtab
set smarttab
set shiftwidth=4
set shiftround
"set nowrap
"
"
