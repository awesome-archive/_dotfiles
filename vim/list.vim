
set nocompatible
filetype off

set rtp+=~/.vim/autoload/




call plug#begin('~/.vim/plugged')
Plug 'mattn/emmet-vim'
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/mru.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'bronson/vim-trailing-whitespace'
Plug 'yggdroot/indentline'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'lepture/vim-jinja'
Plug 'digitaltoad/vim-jade'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-markdown'
Plug 'nono/jquery.vim'
Plug 'groenewege/vim-less'
Plug 'wavded/vim-stylus'
Plug 'altercation/vim-colors-solarized'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'airblade/vim-gitgutter'
Plug 'roman/golden-ratio'
Plug 'ctjhoa/spacevim'
Plug 'matze/vim-move'
Plug 'terryma/vim-expand-region'
Plug 'danro/rename.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'vimcn/vimcdoc'
Plug 'mileszs/ack.vim'
Plug 'dkprice/vim-easygrep'
Plug 'sjas/csexplorer'
Plug 'majutsushi/tagbar'
Plug 'dhruvasagar/vim-table-mode'
Plug 'YankRing.vim'
Plug 'gregsexton/matchtag'
Plug 'pbrisbin/vim-syntax-shakespeare'
Plug 'scrooloose/syntastic'
Plug 'ap/vim-css-color'
Plug 'csscomb/vim-csscomb'
Plug 'vimwiki/vimwiki'
"Plug 'https://github.com/valloric/ycmd', { 'dir': '~/.vim/plugged/ycmd', 'do': './build.py --all' }
Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/plugged/YouCompleteMe', 'do': './install.py --all' }
Plug 'iamcco/dict.vim'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'endel/ctrlp-filetype.vim'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'shougo/unite.vim'
Plug 'osyo-manga/unite-quickfix'
Plug 'Shougo/vimfiler.vim'
Plug 'shougo/vimshell.vim'
Plug 'shougo/vimproc.vim', { 'dir': '~/.vim/plugged/vimproc.vim', 'do': 'make' }
Plug 'chiel92/vim-autoformat'
Plug 'itchyny/lightline.vim'
call plug#end()

filetype plugin indent on

