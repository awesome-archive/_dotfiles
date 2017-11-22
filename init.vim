" ----------------------------------------------------------------------------
" base 
" ----------------------------------------------------------------------------
let mapleader = " "
let g:mapleader = " "
syntax on
set history=1000
filetype on
filetype plugin on
filetype indent on
"let &t_SI = "\<Esc>]50;CursorShape=1\x7"
"let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set nocompatible
set autoread
set shortmess=atI
set noshowmode
set clipboard=unnamed

set magic
set title
set nobackup
set nowb
set noswapfile

set novisualbell
set noerrorbells
set visualbell t_vb=
set t_vb=
set tm=500
set lazyredraw

if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" movement
set scrolloff=10

set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" show
set ruler
set number
set nowrap
set showcmd
set showmode
set showmatch
set matchtime=2

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" tab
set expandtab
set smarttab
set shiftround

" indent
set autoindent smartindent shiftround
set shiftwidth=2
set tabstop=2
set softtabstop=2

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" NOT SUPPORT
" fold
set foldenable
set foldmethod=indent
set foldlevel=10
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B

" select & complete
set selection=inclusive
set selectmode=mouse,key

set completeopt=longest,menu
set wildmenu
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,*.class

" others
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

set laststatus=2

" ----------------------------------------------------------------------------
" key map
" ----------------------------------------------------------------------------
nnoremap k gk
nnoremap gk k
nnoremap j gj
nnoremap gj j

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

nnoremap <leader>q :q<CR>
map <Leader>sa ggVG"

nnoremap U <C-r>

nnoremap ' `
nnoremap ` '

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
noremap <silent><leader>/ :nohls<CR>
vnoremap < <gv
vnoremap > >gv
"nnoremap ; :
"nnoremap : ;

if has("gui_running")
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set showtabline=0
endif

map <silent> <leader><cr> :noh<cr>

noremap 0 ^
map <Leader>cd :cd %:p:h<CR>
nmap <leader>F :%s//g<LEFT><LEFT>
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>
nmap <silent> <Leader>pl :PlugInstall<CR>
inoremap jj <Esc>

map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>h <C-W>h
map <Leader>l <C-W>l

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>

nnoremap <slent><Leader>W :w !sudo tee %<CR>

" ----------------------------------------------------------------------------
" plug
" ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --gocode-completer
  endif
endfunction

" theme
"Plug 'junegunn/seoul256.vim'
Plug 'ayu-theme/ayu-vim'
"Plug 'tomasr/molokai'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"tagbar
Plug 'majutsushi/tagbar'

" 文件搜索
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'

" auxiliary
Plug 'haya14busa/incsearch.vim'
""Plug 'rhysd/clever-f.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'mhinz/vim-signify'
Plug 'szw/vim-maximizer'
Plug 'iamcco/dict.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdcommenter'
Plug 'Chiel92/vim-autoformat'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-repeat'
Plug 'justinmk/vim-gtfo'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'

" completion
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
    Plug 'ternjs/tern_for_vim'
endif

" js
Plug 'pangloss/vim-javascript'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'posva/vim-vue'

" snippets
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" css
Plug 'rstacruz/sparkup'
"Plug '1995eaton/vim-better-css-completion'
"Plug 'npacker/vim-css3complete'
"Plug 'yuratomo/css3-complete'
Plug 'vim-scripts/css3-mod'
Plug 'ap/vim-css-color'

call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

" theme
"set background=light
"set background=dark
set termguicolors
"let ayucolor="light"
"let ayucolor="mirage"
let ayucolor="dark"
colorscheme ayu
"colorscheme molokai


set guifont=Inconsolata:h22

" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ----------------------------------------------------------------------------
" NERDT
" ----------------------------------------------------------------------------
nmap <Leader>at :NERDTreeToggle<CR>
nmap <Leader>fd :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
let NERDTreeShowHidden=2
let NERDTreeMinimalUI=0
let NERDTreeAutoDeleteBuffer=1
let NERDTreeQuitOnOpen=0
let NERDTreeChDirMode=1
let NERDTreeDirArrows= 0
let NERDTreeHighlightCursorline=1
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '\~$', '\.pyc$', '\.swp$', '\.DS_Store']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end


" function

" ----------------------------------------------------------------------------
" Autoformat
" ----------------------------------------------------------------------------
"au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
nmap <leader>mf :Autoformat<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => incsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map z/ <Plug>(incsearch-easymotion-/)
map z? <Plug>(incsearch-easymotion-?)
map g/ <Plug>(incsearch-easymotion-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" ----------------------------------------------------------------------------
" UltiSnips
" ----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"
" ----------------------------------------------------------------------------
" vim-maximizer
" ----------------------------------------------------------------------------
nnoremap <tab> :MaximizerToggle<CR>

" ----------------------------------------------------------------------------
" 预览文件
" ----------------------------------------------------------------------------
function! ViewInBrowser(name)
    let file = expand("%:p")
    let l:browsers = {
        \"cr":"open -a \"Google Chrome\"",
        \"ff":"open -a Firefox",
    \}
    let htdocs='/Users/111iuunhao/Desktop/Qianyi'
    let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
    let file = '"'. file . '"'
    exec ":update " .file
    if strpos == -1
        exec ":silent ! ". l:browsers[a:name] ." file://". file
    else
        let file=substitute(file, htdocs, "http://10.101.29.95", "g")
                let file=substitute(file, '\\', '/', "g")
        exec ":silent ! ". l:browsers[a:name] file
    endif
endfunction
nmap <Leader>o :call ViewInBrowser("cr")<cr>
" ----------------------------------------------------------------------------
"关闭其他缓存区
" ----------------------------------------------------------------------------
function! SpacevimKillOtherBuffers()
  if confirm('Killing all buffers except "'. @% . '"?')
    let buffer = bufnr('%')
    let last_buffer = bufnr('$')
    let delete_count = 0
    let n = 1
    while n <= last_buffer
      if n != buffer && buflisted(n)
        if getbufvar(n, '&modified')
          echohl ErrorMsg
          echomsg 'No write since last change for buffer'
                \ n
          echohl None
        else
          silent exe 'bdel ' . n
          if ! buflisted(n)
            let delete_count = delete_count+1
          endif
        endif
      endif
      let n = n+1
    endwhile
    if delete_count == 1
      echomsg delete_count 'Buffer deleted'
    elseif delete_count > 1
      echomsg delete_count 'Buffers deleted'
    endif
  endif
endfunction
nmap <Leader>bK :call SpacevimKillOtherBuffers()<cr>;

set shortmess+=c
au User CmSetup call cm#register_source({'name' : 'cm-css',
        \ 'priority': 9,
        \ 'scoping': 1,
        \ 'scopes': ['css','scss'],
        \ 'abbreviation': 'css',
        \ 'word_pattern': '[\w\-]+',
        \ 'cm_refresh_patterns':['[\w\-]+\s*:\s+'],
        \ 'cm_refresh': {'omnifunc': 'csscomplete#CompleteCSS'},
        \ })

let g:used_javascript_libs = 'vue'

let g:javascript_plugin_jsdoc = 1



" ----------------------------------------------------------------------------
" fzf
" ----------------------------------------------------------------------------
if has('nvim')
  "let $FZF_DEFAULT_OPTS .= ' --inline-info'
  " let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

let $FZF_DEFAULT_COMMAND = 'find * -type f 2>/dev/null | grep -v -E "deps\/|_build\/|node_modules\/|vendor\/|build_intellij\/|\.DS_Store"'
"let $FZF_DEFAULT_OPTS = '--reverse'
"let g:fzf_layout = {'up': '~80%'}
let g:fzf_tags_command = 'ctags -R --exclude=".git" --exclude="node_modules" --exclude="vendor" --exclude="log" --exclude="tmp" --exclude="db" --exclude=".DS_Store" --exclude="deps" --exclude="_build" --extra=+f .'


command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader>fr        :History<CR>
nnoremap <silent> <Leader>bb  :Buffers<CR>
nnoremap <silent> <leader>ft :Filetypes<cr>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>`        :Marks<CR>

nnoremap <silent> <Leader>ll        :Lines<CR>
nnoremap <silent> <Leader>bl        :BLines<CR>

" nnoremap <silent> q: :Hisrtory:<CR>
" nnoremap <silent> q/ :History/<CR>

inoremap <expr> <c-x><c-t> fzf#complete('tmuxwords.rb --all-but-current --scroll 500 --min 5')
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

function! s:plugs_sink(line)
  let dir = g:plugs[a:line].dir
  for pat in ['doc/*.txt', 'README.md', ".DS_Store"]
    let match = get(split(globpath(dir, pat), "\n"), 0, '')
    if len(match)
      execute 'tabedit' match f
      return
    endif
  endfor
  tabnew
  execute 'Explore' dir
endfunction

command! PlugHelp call fzf#run(fzf#wrap({
  \ 'source':  sort(keys(g:plugs)),
  \ 'sink':    function('s:plugs_sink')}))


function! Multiple_cursors_before()
  let g:smartim_disable = 1
endfunction
function! Multiple_cursors_after()
  unlet g:smartim_disable
endfunction



let g:lightline = {'colorscheme': 'wombat'}

" ----------------------------------------------------------------------------
" dict.vim
" ----------------------------------------------------------------------------
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
let g:vikiUseParentSuffix = 1
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch
nmap <silent> <Leader>d <Plug>DictSearch
vmap <silent> <Leader>d <Plug>DictVSearch
nmap <silent> <Leader>dw <Plug>DictWSearch
vmap <silent> <Leader>dw <Plug>DictWVSearch



inoremap <expr> <silent> <Tab>  pumvisible()?"\<C-n>":"\<TAB>"
inoremap <expr> <silent> <S-TAB>  pumvisible()?"\<C-p>":"\<S-TAB>"
imap <c-g> <Plug>(cm_force_refresh)


" ----------------------------------------------------------------------------
" terminal
" ----------------------------------------------------------------------------
if has('nvim')
  fu! OpenTerminal()
   " open split windows on the topleft
   topleft split
   " resize the height of terminal windows to 30
   resize 30
   :terminal
  endf
else
  fu! OpenTerminal()
   topleft split
   resize 60
   :call term_start('zsh', {'curwin' : 1, 'term_finish' : 'close'})
  endf
endif
nnoremap <leader><leader>t :call OpenTerminal()<cr>


" ----------------------------------------------------------------------------
" easymotion
" ----------------------------------------------------------------------------

function! s:config_easyfuzzymotion(...) abort
  return extend(copy({
  \   'converters': [incsearch#config#fuzzyword#converter()],
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {"\<CR>": '<Over>(easymotion)'},
  \   'is_expr': 0,
  \   'is_stay': 1
  \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> <Space>/ incsearch#go(<SID>config_easyfuzzymotion())


function! s:incsearch_config(...) abort
  return incsearch#util#deepextend(deepcopy({
  \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
  \   'keymap': {
  \     "\<CR>": '<Over>(easymotion)'
  \   },
  \   'is_expr': 0
  \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))
nmap s <Plug>(easymotion-s)
omap t <Plug>(easymotion-bd-tl)
let g:EasyMotion_use_upper = 1
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_smartsign_us = 1
map <Leader><Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>L <Plug>(easymotion-overwin-line)
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)

" ----------------------------------------------------------------------------
" gotf 
" ----------------------------------------------------------------------------
let g:gtfo#terminals = { 'mac': 'iterm' }

" ----------------------------------------------------------------------------
" tagbar 
" ----------------------------------------------------------------------------
nmap <Leader>ab :TagbarToggle<CR>

" ----------------------------------------------------------------------------
" arilien 
" ----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline_theme='behelit'
set ambiwidth=double

" ----------------------------------------------------------------------------
" ctrlsf 
" ----------------------------------------------------------------------------
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

" ----------------------------------------------------------------------------
" 自定义命令
" ----------------------------------------------------------------------------
map <Leader>hv :e /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf<CR>
map <Leader>hh :e /etc/hosts<CR>
map <Leader>to :!open .<CR>
map <Leader>push :!bash ~/dotfiles/push.sh<CR>
map <silent> <Leader>ez :e ~/dotfiles/zshrc<CR>
map <silent> <Leader>sdemo :!touch index.html & touch app.js & touch css.less<CR>
map <Leader>r :!node %<CR>


