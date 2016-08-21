set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" 插件管理
Bundle 'gmarik/vundle'

" 代码片段
Bundle 'sirver/ultisnips'
Bundle 'honza/vim-snippets'

" 代码补全
Bundle 'Valloric/YouCompleteMe'
" 语法检查
Bundle 'pbrisbin/vim-syntax-shakespeare'
Bundle 'scrooloose/syntastic'

" 前端开发
Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
"Bundle 'digitaltoad/vim-jade'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-markdown'
"Bundle 'nono/jquery.vim'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'
Bundle "ap/vim-css-color"
Bundle 'csscomb/vim-csscomb'
Bundle 'valloric/matchtagalways'
Bundle 'kabbamine/vcoolor.vim'

" 文件编辑
Bundle 'kien/ctrlp.vim'
Bundle 'endel/ctrlp-filetype.vim'
Bundle 'mattesgroeger/vim-bookmarks'
Bundle 'kannokanno/previm'
Bundle 'tyru/open-browser.vim'
Bundle 'mhinz/vim-startify'

" 辅助增强
Bundle 'iamcco/dict.vim'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'supasorn/vim-easymotion'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'sjl/gundo.vim'
Bundle 'vim-scripts/mru.vim'
Bundle 'ervandew/supertab'
Bundle 'ctjhoa/spacevim'
Bundle 'matze/vim-move'
Bundle 'terryma/vim-expand-region'
Bundle 'danro/rename.vim'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'vimcn/vimcdoc'
Bundle 'YankRing.vim'
Bundle 'chiel92/vim-autoformat'
Bundle 'luochen1990/rainbow'

" 窗口设置
Bundle 'roman/golden-ratio'
Bundle 'kien/tabman.vim'

" 终端模拟
Bundle 'shougo/vimproc.vim'
Bundle 'shougo/vimshell.vim'

" 搜索增强
"Bundle 'mileszs/ack.vim'
Bundle 'dkprice/vim-easygrep'
Bundle 'pelodelfuego/vim-swoop'
Bundle 'justinmk/vim-sneak'
Bundle 'osyo-manga/vim-over'
Bundle 'haya14busa/incsearch.vim'
Bundle 'osyo-manga/vim-anzu'


" 配色主题
Bundle 'altercation/vim-colors-solarized'
Bundle 'morhetz/gruvbox'
"Bundle 'dracula/vim'
Bundle 'joshdick/onedark.vim'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'sbecker/github_editor_theme'
Bundle 'jonathanfilip/vim-lucius'
Bundle 'noahfrederick/vim-hemisu'

" 状态栏
Bundle 'bling/vim-airline'
Bundle 'paranoida/vim-airlineish'
Bundle 'joshdick/airline-onedark.vim'
Bundle 'phazyy/vim-mod8-airline'

" 笔记辅助
Bundle 'vimwiki/vimwiki'
Plugin 'yysfire/vimwiki2markdown'
Bundle 'dhruvasagar/vim-table-mode'
Bundle 'jceb/vim-orgmode'

" Git插件
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'
Bundle 'mattn/gist-vim'

" 代码统计
Bundle 'wakatime/vim-wakatime'
" 225b2d32-d6c1-4e77-94e6-9526b0783baf

" 其他
Bundle 'sjas/csexplorer'
Bundle 'majutsushi/tagbar'


filetype plugin indent on

