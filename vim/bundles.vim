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
"Bundle 'lepture/vim-jinja'
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
"Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'morhetz/gruvbox'
"Bundle 'dracula/vim'
Bundle 'joshdick/onedark.vim'


Bundle 'airblade/vim-gitgutter'
Bundle 'roman/golden-ratio'
"Bundle 'tpope/vim-repeat'
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

Bundle 'gregsexton/matchtag'

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
Bundle 'itchyny/lightline.vim'

Bundle 'pelodelfuego/vim-swoop'
Bundle 'justinmk/vim-sneak'
"Bundle 'goldfeld/vim-seek'
"Bundle 't9md/vim-smalls'
"Bundle 'rhysd/clever-f.vim'

filetype plugin indent on
