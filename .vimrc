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
set cmdheight=2
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set title
set linespace=0
set wildmenu
set showcmd
set textwidth=80
"set columns=100
"set lines=150
colorscheme desert
set t_Co=256
set syntax=on 
set cursorline

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
"set showmatch
set backspace=indent,eol,start
set clipboard=unnamed
set pastetoggle=<F12>
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

" vundle
" " --------------------

set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" plugins
" " --------------------
Bundle 'Shougo/neocomplcache'
let g:neocomplcache_enable_at_startup = 1

" Use smartcase.
let g:NeoComplCache_SmartCase = 1
" Use camel case completion.
let g:NeoComplCache_EnableCamelCaseCompletion = 1
" Use underbar completion.
let g:NeoComplCache_EnableUnderbarCompletion = 1
" Set minimum syntax keyword length.
let g:NeoComplCache_MinSyntaxLength = 3
" Set manual completion length.
let g:NeoComplCache_ManualCompletionStartLength = 0

" Print caching percent in statusline.
"let g:NeoComplCache_CachingPercentInStatusline = 1

" Define dictionary.
let g:NeoComplCache_DictionaryFileTypeLists = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions', 
            \ 'scala' : $DOTVIM.'/dict/scala.dict', 
            \ 'ruby' : $DOTVIM.'/dict/ruby.dict'
            \ }

" Define keyword.
if !exists('g:NeoComplCache_KeywordPatterns')
    let g:NeoComplCache_KeywordPatterns = {}
endif
let g:NeoComplCache_KeywordPatterns['default'] = '\v\h\w*'

let g:NeoComplCache_SnippetsDir = $HOME.'/snippets'
