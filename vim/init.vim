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
set noswapfile
set clipboard=unnamed

set magic     
set title    
set nobackup 

set novisualbell   
set noerrorbells  
set visualbell t_vb=  
set t_vb=
set tm=500
" show location
"set cursorcolumn
"set cursorline

" movement
set scrolloff=10


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
set shiftwidth=4
set tabstop=4
set softtabstop=4

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
nnoremap ; :
" save
cmap w!! w !sudo tee >/dev/null %
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O
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

nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>



call plug#begin('~/.vim/plugged')
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --gocode-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }
Plug 'ervandew/supertab'
Plug 'vim-scripts/AutoComplPop'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'


Plug '1995eaton/vim-better-css-completion'
Plug 'ap/vim-css-color'
Plug 'hail2u/vim-css3-syntax', {'for':['css','scss', 'styl', 'less']}
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'isruslan/vim-es6'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'Junza/Spink'
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'posva/vim-vue'


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'iamcco/dict.vim'

Plug 'joshdick/onedark.vim'
Plug 'junegunn/seoul256.vim'

Plug 'haya14busa/incsearch.vim'
Plug 'rhysd/clever-f.vim'
Plug 'szw/vim-maximizer'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
Plug 'itchyny/lightline.vim'

Plug 'ybian/smartim'

call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


" theme
"set t_Co=256
"let g:seoul256_background = 233
set background=dark
"colo seoul256
"set guifont=Inconsolata_for_Powerline:h24
colorscheme onedark

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

let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<Tab>', '<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::', '(', 'use ', 'namespace ', '\'],
            \   'cs,java,typescript,d,python,perl6,scala,vb,elixir,go' : ['.', 're!(?=[a-zA-Z]{3,4})'],
            \   'html': ['<', '"', '</', ' '],
            \   'vim' : ['re![_a-za-z]+[_\w]*\.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \   'haskell' : ['.', 're!.'],
            \   'scss,css': [ 're!^\s{2,4}', 're!:\s+' ],
            \ }
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

" ----------------------------------------------------------------------------
" ALE
" ----------------------------------------------------------------------------
let g:ale_linters = {'java': [], 'yaml': []}
let g:ale_fixers = {'ruby': ['rubocop']}
let g:ale_lint_delay = 1000
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)

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
  for pat in ['doc/*.txt', 'README.md']
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


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

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
