" 插件列表
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
"保存会话
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'

Plug '1995eaton/vim-better-css-completion'
Plug 'vim-scripts/AutoComplPop'

function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --gocode-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }
Plug 'othree/javascript-libraries-syntax.vim'


"UI
Plug 'itchyny/lightline.vim'
Plug 'mikker/lightline-theme-pencil'
Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/seoul256.vim'
Plug 'mikker/vim-dimcil'
Plug 'benjie/neomake-local-eslint.vim'
"辅助增强
Plug 'sbdchd/neoformat'

Plug 'mattesgroeger/vim-bookmarks'

Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'roman/golden-ratio'
Plug 'szw/vim-maximizer'
Plug 'scrooloose/nerdcommenter'
Plug 'iamcco/dict.vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-gtfo'
Plug 'danro/rename.vim'
Plug 'mhinz/vim-signify'
Plug 'ervandew/supertab'
"语言
Plug 'sheerun/vim-polyglot'
Plug 'vim-scripts/matchit.zip'

Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

Plug 'pangloss/vim-javascript'
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }


Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'styl', 'pug'] }
Plug 'isRuslan/vim-es6'
Plug 'w0rp/ale'
Plug 'ap/vim-css-color'
Plug 'Junza/Spink'
Plug 'othree/yajs.vim'
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'moll/vim-node'
Plug 'hail2u/vim-css3-syntax', {'for':['css','scss', 'styl', 'less']}
Plug 'posva/vim-vue'
" Plug 'digitaltoad/vim-pug'
" Plug 'wavded/vim-stylus'
" Plug 'chemzqm/wxapp.vim'
"文件操作
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tweekmonster/fzf-filemru'
call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)