set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Code Completions
"------------------
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
" snippets
Bundle 'sirver/ultisnips'
Bundle 'honza/vim-snippets'
"-----------------
" Fast navigation
"-----------------
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'supasorn/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'
"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/mru.vim'
"--------------
" IDE features
"--------------
Bundle 'tpope/vim-fugitive'
"Bundle 'bronson/vim-trailing-whitespace'
"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
"Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
"Bundle 'nono/jquery.vim'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'morhetz/gruvbox'
"Bundle 'dracula/vim'
Bundle 'joshdick/onedark.vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'sbecker/github_editor_theme'

Bundle 'airblade/vim-gitgutter'
Bundle 'roman/golden-ratio'
Bundle 'ctjhoa/spacevim'



Bundle 'matze/vim-move'
Bundle 'terryma/vim-expand-region'
Bundle 'danro/rename.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'vimcn/vimcdoc'
"Bundle 'mileszs/ack.vim'
Bundle 'dkprice/vim-easygrep'

Bundle 'sjas/csexplorer'
Bundle 'majutsushi/tagbar'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'YankRing.vim'


Bundle 'pbrisbin/vim-syntax-shakespeare'
Bundle 'scrooloose/syntastic'
Bundle "ap/vim-css-color"
Bundle 'csscomb/vim-csscomb'

Bundle 'vimwiki/vimwiki'
Plugin 'yysfire/vimwiki2markdown'

" 中文注释
Bundle 'Valloric/YouCompleteMe'
Bundle 'iamcco/dict.vim'
Bundle 'kien/ctrlp.vim'
"Bundle 'tacahiroy/ctrlp-funky'
Bundle 'endel/ctrlp-filetype.vim'
Bundle 'mattesgroeger/vim-bookmarks'

"Bundle 'shougo/unite.vim'
"Bundle 'Shougo/vimfiler.vim'
"Bundle 'Shougo/neomru.vim'

Bundle 'shougo/vimshell.vim'
Bundle 'shougo/vimproc.vim'

Bundle 'chiel92/vim-autoformat'
bundle 'bling/vim-airline'

Bundle 'paranoida/vim-airlineish'
Bundle 'joshdick/airline-onedark.vim'
Bundle 'phazyy/vim-mod8-airline'

Bundle 'pelodelfuego/vim-swoop'
Bundle 'justinmk/vim-sneak'
"Bundle 'goldfeld/vim-seek'
"Bundle 't9md/vim-smalls'
"Bundle 'rhysd/clever-f.vim'



















" Gist
Bundle 'mattn/gist-vim'
" 等号对齐
Bundle 'junegunn/vim-easy-align'

" 启动页面为最近打开文件
Bundle 'mhinz/vim-startify'



Bundle 'jpalardy/vim-slime'
Bundle 'jonathanfilip/vim-lucius'

Bundle 'valloric/matchtagalways'

" md编辑预览
Bundle 'kannokanno/previm'
Bundle 'tyru/open-browser.vim'

" 替换高亮
Bundle 'osyo-manga/vim-over'

" 彩色括号
Bundle 'luochen1990/rainbow'


" 查找增强
Bundle 'haya14busa/incsearch.vim'
Bundle 'osyo-manga/vim-anzu'

" 编码统计 
Bundle 'wakatime/vim-wakatime'
" 225b2d32-d6c1-4e77-94e6-9526b0783baf


Bundle 'jceb/vim-orgmode'

" 高亮变量
Bundle 'guns/vim-clojure-highlight'


" 列表显示
Bundle 'szw/vim-ctrlspace'


Bundle 'noahfrederick/vim-hemisu'
Bundle 'kien/tabman.vim'

Bundle 'fcitx.vim'

filetype plugin indent on
