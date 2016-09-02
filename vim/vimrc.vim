" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
" Author:  iuunhao
" Version: 1.0
" Email: html.5@foxmail.com 
" ----------------------------------------------------------------------------
filetype plugin indent on
syntax enable
syntax on
set t_Co=256
set history=200           "history: number of command-lines remembered
set autoread              " auto reload file after being modified
set shortmess=atI         " do not show initial page
set nobackup
set noswapfile
set cursorcolumn          " highlight current column
set cursorline            " highlight current line
set t_ti= t_te=           " alway show the content on the screen after exist VIM
set mouse-=a              " disable mouse
set selection=inclusive   "set selection=exclusive
set selectmode=mouse,key
set title                 " change the terminal's title
set novisualbell          " don't beep
set noerrorbells          " don't beep
set t_vb=
set tm=500
set nostartofline         " keep cursor postion when switching between buffers
set number " show line number
set nowrap " disable wrap
"set list
set listchars=tab:›\ ,trail:•,extends:❯,precedes:❮
set showmatch         " show matched brackets
set mat=2             " How many tenths of a second to blink when matching brackets

set hlsearch          " highlight the searching words
set ignorecase        " ingnore case when do searching

set bsdir=buffer
set autochdir

set incsearch         " instant search
set smartcase         " ignore case if search pattern is all lowercase, case-sensitive otherwise

set foldenable        " code folding
set foldmethod=indent " options: manual, indent, expr, syntax, diff, marker
set foldlevel=99

set smartindent       " Do smart autoindenting when starting a new line
set autoindent        " always set autoindenting on

set tabstop=4         " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=4      " number of spaces to use for autoindenting
set softtabstop=4     " Number of spaces that a <Tab> counts for while performing editing operations
set smarttab
set expandtab         " when typing <Tab>, use <space> instead
set shiftround        " use multiple of shiftwidth when indenting with '<' and '>'

set hidden            " A buffer becomes hidden when it is abandoned
set wildmode=longest:full,full
set ttyfast

set relativenumber " show relative line number
set ruler          " show the current line number and column number
set showcmd        " show the current typing command
set noshowmode     " Show current mode
set scrolloff=7    " Set 7 lines to the cursor - when moving vertically using j/k

" File encode:encode for varied filetype
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=en
set termencoding=utf-8

set ffs=unix,dos,mac         " Use Unix as the standard file type
set formatoptions+=m
set formatoptions+=B         " When joining lines, don't insert a space between two multi-byte characters.
set completeopt=longest,menu " behaviour of insert mode completion
set wildmenu                 " auto complete command
set wildignore=**.o,*~,.swp,*.bak,*.pyc,*.class " Ignore compiled files

set viminfo^=% " Remember info about open buffers on close
set magic      " For regular expressions turn magic on

"共享剪贴板  
set clipboard+=unnamed 

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m
set guioptions-=T

set backspace=eol,start,indent               " Configure backspace so it acts as it should act
set whichwrap+=<,>,h,l
set pastetoggle=<F5>                         " when in insert mode, toggle between 'paste' and 'nopaste'

"let &colorcolumn="80,".join(range(120,999),",")
"let &colorcolumn="160"

autocmd InsertEnter * :set norelativenumber " no relativenumber in insert mode
autocmd InsertLeave * :set relativenumber   " show relativenumber when leave insert mode

"create undo file
if has('persistent_undo')
  set undofile                " So is persistent undo ...
  set undolevels=1000         " Maximum number of changes that can be undone
  set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
  set undodir=~/.undodir/
endif


if has('statusline')
    set laststatus=2
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    set statusline+=\ [%{&ff}/%Y]            " Filetype
    set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
au InsertLeave * set nopaste

autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType javascript,json,css,scss,html set tabstop=2 shiftwidth=2 expandtab ai

autocmd BufReadPre * if getfsize(expand("%")) > 10000000 | syntax off | endif

" ----------------------------------------------------------------------------
" Key Mappings:Customized keys
" ----------------------------------------------------------------------------

command! W w !sudo tee % > /dev/null

"goto older/newer position in change list
nnoremap <silent> ( g;
nnoremap <silent> ) g,

"replace currently selected text with default register without yanking it
vnoremap p "_dP

" use ctrl-c to copy to system clipboard
vnoremap <C-c> "*y

" use <C-V> to paste yanked content
inoremap <C-V> <C-R>"
"Treat long lines as break lines (useful when moving around in them)
noremap j gj
noremap k gk

" better command line editing
" cnoremap <C-j> <t_kd>
" cnoremap <C-k> <t_ku>
" cnoremap <C-a> <Home>
" cnoremap <C-e> <End>

"Smart way to move between windows
"noremap <C-j> <C-W>j
"noremap <C-k> <C-W>k
"noremap <C-h> <C-W>h
"noremap <C-l> <C-W>l

        " Go to home and end using capitalized directions
noremap H 0
noremap L $
noremap Y y$


" Remap VIM 0 to first non-blank character
noremap 0 ^

" Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>

"no Highlight
noremap <silent><leader>/ :nohls<CR>

"nnoremap ; :

"Keep search pattern at the center of the screen."
noremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz


" remap U to <C-r> for easier redo
nnoremap U <C-r>


" toggle between two buffers
nnoremap t <C-^>

"" Vmap for maintain Visual Mode after shifting > and <
vnoremap < <gv
vnoremap > >gv

if has('macunix')
  " pbcopy for OSX copy/paste
  vnoremap <C-x> :!pbcopy<CR>
  vnoremap <C-c> :w !pbcopy<CR><CR>
endif

hi! link SignColumn   LineNr
hi! link ShowMarksHLl DiffAdd
hi! link ShowMarksHLu DiffChange

" for error highlight
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline




" Shortcuts to define
let mapleader = " "
let g:mapleader = " "

map <silent> <leader><cr> :noh<cr>

noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

inoremap <C-a> <Left>
inoremap <C-s> <Down>
" noremap <C-w> <Up>
" inoremap <C-d> <Right>
"

noremap H ^
noremap L $

nmap j gj
nmap k gk

inoremap jk <esc>

map ,cd :cd %:p:h<CR>

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>

map <C-A> ggVGY
map! <C-A> <Esc>ggVGY

vmap <C-c> "+y

nmap <D-]> >>
nmap <D-[> <<

map <Leader>T :%s/\s\+$//<CR>

nmap <leader>F :%s//g<LEFT><LEFT>


map <Leader>push :!bash ~/dotfiles/push.sh<CR>


" 插件
call plug#begin('~/.vim/plugged')
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'scrooloose/syntastic'
Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] }
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript'] }
Plug 'valloric/matchtagalways'
Plug 'kien/ctrlp.vim'
Plug 'endel/ctrlp-filetype.vim'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'iamcco/dict.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'YankRing.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Lokaltog/vim-easymotion'
Plug 'unblevable/quick-scope'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'szw/vim-maximizer'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
"Plug 'vim-scripts/BufOnly.vim'
Plug 'pangloss/vim-javascript', { 'for': ['html', 'jsx', 'javascript'] }
Plug 'tpope/vim-markdown'
Plug 'myhere/vim-nodejs-complete', { 'for': 'javascript' }
Plug 'kannokanno/previm'
Plug 'tyru/open-browser.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'kris2k/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ervandew/supertab'
Plug 'Chiel92/vim-autoformat'
"Plug 'pelodelfuego/vim-swoop'
Plug 'Raimondi/delimitMate'
"Plug 'bsdelf/bufferhint'
Plug 'roman/golden-ratio'
Plug 'vim-scripts/mru.vim'
"Plug 'tell-k/vim-browsereload-mac'

Plug 'terryma/vim-expand-region'

call plug#end()



" ----------------------------------------------------------------------------
" BufOnly.vim
" ----------------------------------------------------------------------------
nnoremap <silent> qo :BufOnly<CR>

" ----------------------------------------------------------------------------
" NERDT
" ----------------------------------------------------------------------------
nmap <Leader>n :NERDTreeToggle<CR>
nmap <F1> :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="right"
let NERDTreeShowHidden=2
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeDirArrows=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end


" ----------------------------------------------------------------------------
" easy-motion
" ----------------------------------------------------------------------------
"let g:EasyMotion_leader_key = ' '
map <Leader> <Plug>(easymotion-prefix)

map  <Leader>f <Plug>(easymotion-sn)
nmap <Leader>f <Plug>(easymotion-tn)

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

map  <Leader>W <Plug>(easymotion-bd-w)
nmap <Leader>W <Plug>(easymotion-overwin-w)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" ----------------------------------------------------------------------------
" airline
" ----------------------------------------------------------------------------
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0


" ----------------------------------------------------------------------------
" ctrlp
" ----------------------------------------------------------------------------
nnoremap <leader>c :CtrlP<CR>
nnoremap <leader>m :CtrlPMRU<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
silent! nnoremap <unique> <silent> <Leader>ii :CtrlPFiletype<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1

let g:ctrlp_extensions = ['filetype']



" ----------------------------------------------------------------------------
" emmet
" ----------------------------------------------------------------------------
let g:user_emmet_expandabbr_key='<d-j>'

" ----------------------------------------------------------------------------
" nerdcommenter
" ----------------------------------------------------------------------------
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

" ----------------------------------------------------------------------------
" vim-maximizer
" ----------------------------------------------------------------------------
nnoremap <tab> :MaximizerToggle<CR>

" ----------------------------------------------------------------------------
" vim-expand-region
" ----------------------------------------------------------------------------
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" ----------------------------------------------------------------------------
" UltiSnips
" ----------------------------------------------------------------------------

"let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_error_symbol='✘'
let g:syntastic_warning_symbol='❗'
let g:syntastic_style_error_symbol='»'
let g:syntastic_style_warning_symbol='•'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
let g:syntastic_javascript_checkers = ['eslint']

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  dict.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
nmap <silent> <Leader>d <Plug>DictSearch
vmap <silent> <Leader>d <Plug>DictVSearch
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch
let g:vikiUseParentSuffix = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_highlight_lines = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Autoformat
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   previm                                   "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END


" ----------------------------------------------------------------------------
" vim-markdown
" ----------------------------------------------------------------------------
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_frontmatter=1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    MRU
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let MRU_Max_Entries = 600
map <leader>r :MRU<CR>

set background=dark
"set background=light
colorscheme onedark
"colorscheme one
set guifont=Inconsolata_for_Powerline:h20

" ----------------------------------------------------------------------------
" YouCompleteMe
" ----------------------------------------------------------------------------

let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_complete_in_comments=1
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_complete_in_comments=1
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_cache_omnifunc=0
set completeopt-=preview
function! MyTabFunction ()
	let line = getline('.')
	let substr = strpart(line, -1, col('.')+1)
	let substr = matchstr(substr, "[^ \t]*$")
	if strlen(substr) == 0
		return "\<tab>"
	endif
	return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
"inoremap <tab> <c-r>=MyTabFunction()<cr>



" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" 在浏览器预览 for Mac
function! ViewInBrowser(name)
    let file = expand("%:p")
    let l:browsers = {
        \"cr":"open -a \"Google Chrome\"",
        \"ff":"open -a Firefox",
    \}
    let htdocs='/Users/iuunhao/Desktop/'
    let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
    let file = '"'. file . '"'
    exec ":update " .file
    "echo file .' ## '. htdocs
    if strpos == -1
        exec ":silent ! ". l:browsers[a:name] ." file://". file
    else
        let file=substitute(file, htdocs, "http://10.101.22.88:8080/", "g")
        let file=substitute(file, '\\', '/', "g")
        exec ":silent ! ". l:browsers[a:name] file
    endif
endfunction
nmap <F11> :call ViewInBrowser("cr")<cr>


"" reload
 command! -bar Cr silent ChromeReload
 command! -bar Fr silent FirefoxReload
 command! -bar Sr silent SafariReload
 command! -bar Or silent OperaReload
 command! -bar Ar silent AllBrowserReload
 "auto reload start
 command! -bar CrStart silent ChromeReloadStart
 command! -bar FrStart silent FirefoxReloadStart
 command! -bar SrStart silent SafariReloadStart
 command! -bar OrStart silent OperaReloadStart
 command! -bar ArStart silent AllBrowserReloadStart
 "auto reload stop
 command! -bar CrStop silent ChromeReloadStop
 command! -bar FrStop silent FirefoxReloadStop
 command! -bar SrStop silent SafariReloadStop
 command! -bar OrStop silent OperaReloadStop
 command! -bar ArStop silent AllBrowserReloadStop

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


