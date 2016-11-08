call plug#begin()

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'  "恢复会话

Plug 'christoomey/vim-system-copy'

Plug 'w0ng/vim-hybrid'
Plug 'ayu-theme/ayu-vim'



Plug 'valloric/matchtagalways'

Plug 'rstacruz/sparkup'

Plug 'tyrannicaltoucan/vim-quantum'

Plug 'danro/rename.vim'

Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' } "补全

Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

Plug 'pelodelfuego/vim-swoop'


Plug 'elixir-lang/vim-elixir'
Plug 'archSeer/elixir.nvim'

Plug 'ddollar/nerdcommenter'


"Plug 'bling/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

Plug 'ctjhoa/spacevim'

"Plug 'mhinz/vim-startify'

Plug 'ap/vim-css-color'
Plug 'sheerun/vim-polyglot'

Plug 'dietsche/vim-lastplace'
Plug 'bronson/vim-trailing-whitespace'


Plug 'bfredl/nvim-miniyank'

Plug 'junegunn/vim-easy-align'
Plug 'aperezdc/vim-lining'

Plug 'honza/vim-snippets' "代码片段


Plug 'kien/ctrlp.vim'


Plug 'iamcco/dict.vim'  "翻译
"Plug 'iamcco/dict.nvim'

Plug 'kris2k/vim-surround'  "成对符号修改

Plug 'scrooloose/syntastic' "语法检查

Plug 'terryma/vim-multiple-cursors' "多点编辑

Plug 'Chiel92/vim-autoformat' "自动格式化

"Plug 'mattn/emet-vim', { 'for': ['html', 'css', 'javascript'] }  "emmet

Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } "css颜色显示

Plug 'DoxygenToolkit.vim'


Plug 'sirver/ultisnips' "代码片段

Plug 'matchit.zip'

Plug 'roman/golden-ratio'  "自动调整窗口大小

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'ervandew/supertab'  "tab增强


"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "文件搜索
"Plug 'junegunn/fzf.vim'
vnoremap <silent> <Enter> :EasyAlign<cr>


call plug#end()

let mapleader      = ' '
let maplocalleader = ' '
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

let mapleader      = ' '
let maplocalleader = ' '
""set nu
set relativenumber
""set ruler
set noshowmode
set autoindent
set smartindent
set lazyredraw
set laststatus=2
set showcmd
set visualbell
set backspace=indent,eol,start
set timeoutlen=500
set whichwrap=b,s
"set shortmess=aIT
set incsearch
set hidden
set ignorecase smartcase
set wildmenu
set wildmode=full
set tabstop=2
set shiftwidth=2
set expandtab smarttab
set scrolloff=5
set encoding=utf-8
set list
set listchars=tab:›\ ,trail:•,extends:❯,precedes:❮
set virtualedit=block
set nojoinspaces
set diffopt=filler,vertical
set autoread
set clipboard=unnamed
set foldlevelstart=99
set grepformat=%f:%l:%c:%m,%f:%l:%m
set completeopt=menuone,preview
set nocursorline
set nrformats=hex
silent! set cryptmethod=blowfish2
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T
set wrap

set foldmethod=indent


set noswapfile
set background=dark
set expandtab
set hlsearch
set ignorecase
set ruler
set showcmd
set showmatch
set smartcase
set smarttab
set number
set nobackup
set tabstop=4

""set guifont=Inconsolata_for_Powerline:h18

set clipboard=unnamed

filetype on

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set nocompatible

if has('nvim')
   set ttimeout
   set ttimeoutlen=0
endif


vnoremap p "_dP
vnoremap <C-c> "*y
inoremap <C-V> <C-R>"
noremap j gj
noremap k gk
nmap j gj
nmap k gk

noremap Y y$
nnoremap <c-s> :w<CR>
noremap 0 ^
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>
noremap <silent><leader>/ :nohls<CR>
noremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap U <C-r>
nnoremap t <C-^>
vnoremap < <gv
vnoremap > >gv




map <silent> <leader><cr> :noh<cr>

noremap <silent> bN :bprev<CR>
noremap <silent> bN :bprev<CR>
noremap <silent> bn :bnext<CR>
noremap <silent> bn :bnext<CR>

inoremap <C-a> <Left>

inoremap <C-s> <Down>



inoremap jk <esc>

map <Leader>cd :cd %:p:h<CR>

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>
nmap <silent> <Leader>ez :e ~/dotfiles/zhs/zshrc<CR>

nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>

nnoremap <leader>su :!svn up<CR>


map <C-A> ggVGY
map! <C-A> <Esc>ggVGY

""colorscheme quantum
""colorscheme hybrid
colorscheme ayu 


vmap <C-c> "+y


map <Leader>T :%s/\s\+$//<CR>

nmap <leader>F :%s//g<LEFT><LEFT>
map <Leader>push :!bash ~/dotfiles/push.sh<CR>

map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>h <C-W>h
map <Leader>l <C-W>l

" ----------------------------------------------------------------------------
"  " 移动选中内容
"  "
"  ----------------------------------------------------------------------------
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
nnoremap <silent> <C-h> <<
nnoremap <silent> <C-l> >>
xnoremap <silent> <C-k> :move-2<cr>gv
xnoremap <silent> <C-j> :move'>+<cr>gv
xnoremap <silent> <C-h> <gv
xnoremap <silent> <C-l> >gv
xnoremap < <gv
xnoremap > >gv


set cursorline
hi Pmenu ctermbg=white
hi PmenuSel ctermbg=lightblue

" ----------------------------------------------------------------------------
" dict.vim Translation
" ----------------------------------------------------------------------------
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
nmap <silent> <Leader>d <Plug>DictSearch
vmap <silent> <Leader>d <Plug>DictVSearch
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch
let g:vikiUseParentSuffix = 1


let g:deoplete#enable_at_startup = 1

set completeopt=longest,menu " 自动补全菜单


" SuperTab
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2


" ----------------------------------------------------------------------------
" syntastic
" ----------------------------------------------------------------------------
let g:syntastic_error_symbol='✘'
let g:syntastic_warning_symbol='!'
let g:syntastic_style_error_symbol='»'
let g:syntastic_style_warning_symbol='•'
let g:syntastic_check_on_open=0
let g:syntastic_enable_highlighting = 0
let g:syntastic_javascript_checkers = ['eslint']

" ----------------------------------------------------------------------------
" NERDT
" ----------------------------------------------------------------------------
nmap <Leader>at :NERDTreeToggle<CR>
nmap <Leader>fd :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
let NERDTreeShowHidden=2
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeQuitOnOpen=1
let NERDTreeChDirMode=2
let NERDTreeDirArrows=1
let NERDTreeHighlightCursorline=1
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '\~$', '\.pyc$', '\.swp$']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end


" ----------------------------------------------------------------------------
" emmet
" ----------------------------------------------------------------------------
"let g:user_emmet_expandabbr_key='<C-Z>'

" ----------------------------------------------------------------------------
" UltiSnips
" ----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"


" ----------------------------------------------------------------------------
" Autoformat
" ----------------------------------------------------------------------------
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0


let g:swoopUseDefaultKeyMap = 0

let g:mta_use_matchparen_group = 1

let g:gitgutter_map_keys = 0
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
nnoremap <leader>gs :GitGutterToggle<CR>

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'


" ----------------------------------------------------------------------------
" 预览文件
" ----------------------------------------------------------------------------
function! ViewInBrowser(name)
    let file = expand("%:p")
    let l:browsers = {
        \"cr":"open -a \"Google Chrome\"",
        \"ff":"open -a Firefox",
    \}
    let htdocs='/Users/iuunhaonihao/Desktop/Qianyi/static.qianyilc.com/trunk/FED/newStatic/'
    let strpos = stridx(file, substitute(htdocs, '\\\\', '\', "g"))
    let file = '"'. file . '"'
    exec ":update " .file
    if strpos == -1
        exec ":silent ! ". l:browsers[a:name] ." file://". file
    else
        let file=substitute(file, htdocs, "http://10.101.22.195:3000/", "g")
                let file=substitute(file, '\\', '/', "g")
        exec ":silent ! ". l:browsers[a:name] file
    endif
endfunction
nmap <Leader>o :call ViewInBrowser("cr")<cr>

" ----------------------------------------------------------------------------
" buf内容搜索
" ----------------------------------------------------------------------------
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>

" ----------------------------------------------------------------------------
" 快速切换配色
" ----------------------------------------------------------------------------
function! s:colors(...)
  return filter(map(filter(split(globpath(&rtp, 'colors/*.vim'), "\n"),
        \                  'v:val !~ "^/usr/"'),
        \           'fnamemodify(v:val, ":t:r")'),
        \       '!a:0 || stridx(v:val, a:1) >= 0')
endfunction

function! s:copy_rtf(line1, line2, ...)
  let [ft, cs, nu] = [&filetype, g:colors_name, &l:nu]
  let lines = getline(1, '$')

  tab new
  setlocal buftype=nofile bufhidden=wipe nonumber
  let &filetype = ft
  call setline(1, lines)

  execute 'colo' get(a:000, 0, 'seoul256-light')
  hi Normal ctermbg=None guibg=None

  let lines = getline(a:line1, a:line2)
  let indent = repeat(' ', min(map(filter(copy(lines), '!empty(v:val)'), 'len(matchstr(v:val, "^ *"))')))
  call setline(a:line1, map(lines, 'substitute(v:val, indent, "", "")'))

  call tohtml#Convert2HTML(a:line1, a:line2)
  g/^\(pre\|body\) {/s/background-color: #[0-9]*; //
  silent %write !textutil -convert rtf -textsizemultiplier 1.3 -stdin -stdout | pbcopy

  bd!
  tabclose

  let &l:nu = nu
  execute 'colorscheme' cs
endfunction

function! s:rotate_colors()
  if !exists('s:colors')
    let s:colors = s:colors()
  endif
  let name = remove(s:colors, 0)
  call add(s:colors, name)
  execute 'colorscheme' name
  redraw
  echo name
endfunction
nnoremap <silent> <F8> :call <SID>rotate_colors()<cr>



let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

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



inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 return a:char
 elseif line[col - 1] == a:char
 return "\<Right>"
 else
 return a:char.a:char."\<Esc>i"
 endif
endf




" Use deoplete.
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'














map <leader>p <Plug>(miniyank-startput)
map <leader>P <Plug>(miniyank-startPut)

map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)

map <leader>n <Plug>(miniyank-cycle)


map <Leader>c <Plug>(miniyank-tochar)
map <Leader>l <Plug>(miniyank-toline)
map <Leader>b <Plug>(miniyank-toblock)










" ctrlp
" "
" ----------------------------------------------------------------------------
"  "
"  ----------------------------------------------------------------------------
let g:ctrlp_map = '<c-E>llllllllllll'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>r :CtrlPMRU<CR>
nnoremap <leader>bb :CtrlPBuffer<CR>
nnoremap <leader>ff :CtrlPRoot<CR>
silent! nnoremap <unique> <silent> <Leader>ft :CtrlPFiletype<CR>
let g:ctrlp_custom_ignore = {

    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
            \ 
}
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif "
MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  "
Windows
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_extensions = ['filetype']






let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="-------------------------------"
let g:DoxygenToolkit_blockFooter="---------------------------------"
let g:DoxygenToolkit_authorName="Junhao Liu"
let g:DoxygenToolkit_licenseTag="My own license" <-- !!! Does not end with "\<enter>">
