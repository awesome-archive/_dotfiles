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
"------ snipmate dependencies -------
"Bundle 'garbas/vim-snipmate'
"Bundle 'tomtom/tlib_vim'
"Bundle 'MarcWeber/vim-addon-mw-utils'

"-----------------
" Fast navigation
"-----------------
"Bundle 'edsono/vim-matchit'
Bundle 'Lokaltog/vim-easymotion'
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
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
"Bundle 'bling/vim-airline'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'yggdroot/indentline'
"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'lepture/vim-jinja'
Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
Bundle 'nono/jquery.vim'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'

"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'morhetz/gruvbox'
Bundle 'dracula/vim'


Bundle 'airblade/vim-gitgutter'
"Bundle 'vim-scripts/sessionman.vim'
Bundle 'roman/golden-ratio'
"Bundle 'junegunn/goyo.vim'

"Bundle 'edkolev/promptline.vim'
"Bundle 'tpope/vim-repeat'
Bundle 'ctjhoa/spacevim'

Bundle 'matze/vim-move'
Bundle 'terryma/vim-expand-region'
Bundle 'danro/rename.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'vimcn/vimcdoc'
"Bundle 'bsdelf/bufferhint'
Bundle 'mileszs/ack.vim'
Bundle 'dkprice/vim-easygrep'

Bundle 'sjas/csexplorer'
Bundle 'majutsushi/tagbar'

Bundle 'dhruvasagar/vim-table-mode'

Bundle 'YankRing.vim'

"Bundle 'Valloric/YouCompleteMe'

Bundle 'gregsexton/matchtag'

Bundle 'pbrisbin/vim-syntax-shakespeare'
Bundle 'scrooloose/syntastic'

Bundle "ap/vim-css-color"
Bundle 'csscomb/vim-csscomb'


Bundle 'vimwiki/vimwiki'

" 中文注释
Bundle 'Valloric/YouCompleteMe'
Bundle 'iamcco/dict.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tacahiroy/ctrlp-funky'
Bundle 'endel/ctrlp-filetype.vim'


Bundle 'mattesgroeger/vim-bookmarks'

Bundle 'shougo/unite.vim'

Bundle 'osyo-manga/unite-quickfix'

Bundle 'Shougo/vimfiler.vim'
Bundle 'shougo/vimshell.vim'
Bundle 'shougo/vimproc.vim'
Bundle 'chiel92/vim-autoformat'


Bundle 'itchyny/lightline.vim'



filetype plugin indent on
