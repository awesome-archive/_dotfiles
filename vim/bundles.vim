set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
" snippets
"Bundle 'garbas/vim-snipmate'
Bundle 'sirver/ultisnips'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

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
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'bronson/vim-trailing-whitespace'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
"------- web backend ---------
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'lepture/vim-jinja'
Bundle 'digitaltoad/vim-jade'

"------- web frontend ----------
Bundle 'othree/html5.vim'
Bundle 'tpope/vim-haml'
Bundle 'pangloss/vim-javascript'
"Bundle 'nono/jquery.vim'
" Bundle 'groenewege/vim-less'
" Bundle 'wavded/vim-stylus'
" Bundle 'nono/vim-handlebars'

"------- markup language -------
Bundle 'tpope/vim-markdown'


"------- FPs ------
Bundle 'kien/rainbow_parentheses.vim'


"--------------
" Color Schemes
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'fisadev/fisa-vim-colorscheme'
Bundle 'morhetz/gruvbox'


Bundle 'airblade/vim-gitgutter'
Bundle 'boundincode/autofilename'
Bundle 'vimwiki'
Bundle 'vim-scripts/bufexplorer.zip'
Bundle 'vim-scripts/sessionman.vim'
Bundle "ap/vim-css-color"
Bundle 'tpope/vim-commentary'
Bundle 'roman/golden-ratio'
Bundle 'junegunn/goyo.vim'
Bundle 'dracula/vim'

Bundle 'edkolev/promptline.vim'
Bundle 'tpope/vim-repeat'
Bundle 'ctjhoa/spacevim'
Bundle 'godlygeek/csapprox'

Bundle 'vcscommand.vim'
Bundle 'dkprice/vim-easygrep'
Bundle 'matze/vim-move'
Bundle 'justinmk/vim-sneak'
Bundle 'terryma/vim-expand-region'
Bundle 'm1foley/vim-expresso'

Bundle 'danro/rename.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'vimcn/vimcdoc'
Bundle 'bsdelf/bufferhint'
Bundle 'mileszs/ack.vim'
Bundle 'sjas/csexplorer'
Bundle 'majutsushi/tagbar'

Bundle 'godlygeek/tabular'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'vim-scripts/TaskList.vim'
Bundle 'YankRing.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'

filetype plugin indent on     " required!
