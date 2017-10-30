let mapleader = ' '
let g:mapleader = ' '
syntax on
set history=1000
filetype on
filetype plugin on
filetype indent on
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
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
" show location
"set cursorcolumn
"set cursorline
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

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


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

" ============================ key map ============================

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
" save
cmap w!! w !sudo tee >/dev/null %


if has("gui_running")
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set showtabline=0
endif

vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
noremap gV `[v`]
noremap 0 ^
noremap Y y$
vnoremap p "_dP
vmap <C-c> "+y

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

call plug#begin('~/.vim/plugged')
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --gocode-completer
  endif
endfunction
"Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }

" 配色
Plug 'junegunn/seoul256.vim'

" 基本
Plug 'christoomey/vim-tmux-navigator'

" 括号补全
Plug 'jiangmiao/auto-pairs'

" 自动菜单
"Plug 'vim-scripts/AutoComplPop'
" 自动格式化
Plug 'Chiel92/vim-autoformat'
" 注释
Plug 'scrooloose/nerdcommenter'

" 多光标编辑
Plug 'terryma/vim-multiple-cursors'

" css补全
"Plug '1995eaton/vim-better-css-completion'
"Plug 'npacker/vim-css3complete'
"Plug 'yuratomo/css3-complete'
Plug 'vim-scripts/css3-mod'

" 将当前目录设置为根
Plug 'airblade/vim-rooter'

" js增强
Plug 'pangloss/vim-javascript'

" 配对修改
Plug 'tpope/vim-surround'

" css颜色显示
Plug 'ap/vim-css-color'

" 代码片段
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'

" vue
Plug 'posva/vim-vue'

" 文件搜索
"Plug 'kien/ctrlp.vim'
"Plug 'endel/ctrlp-filetype.vim'
"Plug 'tacahiroy/ctrlp-funky'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" 文件管理
Plug 'scrooloose/nerdtree'

" 翻译
Plug 'iamcco/dict.vim'

" 搜索增强
Plug 'haya14busa/incsearch.vim'
"Plug 'rhysd/clever-f.vim'

" git状态
Plug 'mhinz/vim-signify'

" 历史文件列表
"Plug 'mru.vim'

" 窗口最大化
Plug 'szw/vim-maximizer'

Plug 'roxma/nvim-completion-manager'
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'othree/javascript-libraries-syntax.vim'

call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)



" theme
set t_Co=256
let g:seoul256_background = 233
set background=dark
colo seoul256
set guifont=Inconsolata_for_Powerline:h24

" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2 " ----------------------------------------------------------------------------
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

" dict.vim
" ----------------------------------------------------------------------------
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
vmap <silent> <Leader>d <Plug>DictVSearch
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch
let g:vikiUseParentSuffix = 1

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


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>fr :MRU<CR>
""""""""""""""""""""""""""""""
" => CTRL-P
"""""""""""""""""""""""""""""
"let g:ctrlp_working_path_mode = 0

"let g:ctrlp_map = '<c-f>'
"map <leader>ff :CtrlP<cr>
"map <leader>bb :CtrlPBuffer<cr>

"let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
" ----------------------------------------------------------------------------
" 自定义命令
" ----------------------------------------------------------------------------
map <Leader>hv :e /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf<CR>
map <Leader>hh :e /etc/hosts<CR>
map <Leader>to :!open .<CR>
map <Leader>push :!bash ~/dotfiles/scripts/push.sh<CR>
map <silent> <Leader>ez :e ~/dotfiles/zsh/zshrc<CR>
map <silent> <Leader>sdemo :!touch index.html & touch app.js & touch css.less<CR>
map <Leader>r :!node %<CR>

map! :w :w ! sudo tee %<CR>



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



" ctrlp-filetype
let g:ctrlp_extensions = ['filetype']
silent! nnoremap <unique> <silent> <Leader>ft :CtrlPFiletype<CR>


nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>


let g:used_javascript_libs = 'vue'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction



let g:javascript_plugin_jsdoc = 1




let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-Mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>


function! Buf_total_num()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction
function! File_size(f)
    let l:size = getfsize(expand(a:f))
    if l:size == 0 || l:size == -1 || l:size == -2
        return ''
    endif
    if l:size < 1024
        return l:size.' bytes'
    elseif l:size < 1024*1024
        return printf('%.1f', l:size/1024.0).'k'
    elseif l:size < 1024*1024*1024
        return printf('%.1f', l:size/1024.0/1024.0) . 'm'
    else
        return printf('%.1f', l:size/1024.0/1024.0/1024.0) . 'g'
    endif
endfunction
set statusline=%<%1*[B-%n]%*
" TOT is an abbreviation for total
set statusline+=%2*[TOT:%{Buf_total_num()}]%*
set statusline+=%3*\ %{File_size(@%)}\ %*
set statusline+=%4*\ %F\ %*
set statusline+=%5*『\ %{exists('g:loaded_ale')?ALEGetStatusLine():''}』%{exists('g:loaded_fugitive')?fugitive#statusline():''}%*
set statusline+=%6*\ %m%r%y\ %*
set statusline+=%=%7*\ %{&ff}\ \|\ %{\"\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"\ \|\"}\ %-14.(%l:%c%V%)%*
set statusline+=%8*\ %P\ %*
" default bg for statusline is 236 in space-vim-dark
hi User1 cterm=bold ctermfg=232 ctermbg=179
hi User2 cterm=None ctermfg=214 ctermbg=242
hi User3 cterm=None ctermfg=251 ctermbg=240
hi User4 cterm=bold ctermfg=169 ctermbg=239
hi User5 cterm=None ctermfg=208 ctermbg=238
hi User6 cterm=None ctermfg=246 ctermbg=237
hi User7 cterm=None ctermfg=250 ctermbg=238
hi User8 cterm=None ctermfg=249 ctermbg=240

" ============================================================================
" FZF {{{
" ============================================================================

if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
  " let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader>bb  :Buffers<CR>
nnoremap <silent> <leader>ft :Filetypes<cr>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <Leader>`        :Marks<CR>
" nnoremap <silent> q: :History:<CR>
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
  for pat in ['doc/*.txt', 'README.md', 'node_modules']
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
