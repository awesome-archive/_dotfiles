"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 历史记录
set history=500

" 启用filetype插件
filetype plugin on
filetype indent on

" 设置为从外部更改文件时自动读取
set autoread

" leader
let mapleader = " "
let g:mapleader = " "

" Fast saving
nmap <leader>w :w!<cr>

W sudo保存文件
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM用户界面
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用j / k垂直移动时，将7行移至光标
set so=7

" 避免中文Windows操作系统中出现乱码
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" 打开WiLd菜单
set wildmenu

" 忽略编译的文件
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"始终显示当前位置
set ruler

" 命令栏的高度
set cmdheight=2

"放弃时，缓冲区将被隐藏
set hid

" 配置backspace，以便它应该起作用
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" 搜索时忽略大小写
set ignorecase

" 当搜索尝试聪明的情况下
set smartcase

" 突出显示搜索结果
set hlsearch

" 使搜索行为像现代浏览器中的搜索一样
set incsearch

" 执行宏时不要重绘（良好的性能配置）
set lazyredraw

" 对于正则表达式变成魔术
set magic

" 当文本指示符在其上时，显示匹配的括号
set showmatch
" 匹配括号时，闪烁几十分之一秒
set mat=2

" 没有烦人的声音错误
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" 正确禁用MacVim上的错误声音
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif

" 向左添加一点额外的余量
set foldcolumn=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 颜色和字体
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 启用语法高亮
syntax enable

" 在Gnome终端启用256色调色板
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme seoul256
catch
endtry

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" 在GUI模式下运行时设置其他选项
set encoding=utf8

" 将utf8作为标准编码和en_US设置为标准语言
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文件，备份和撤消
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 文本，制表符和缩进相关
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用空格而不是制表符
set expandtab

" 使用标签时要聪明
set smarttab

" 1 tab == 4空格
set shiftwidth=2
set tabstop=2

" 线破500字
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => 可视模式相关
""""""""""""""""""""""""""""""
" 可视模式按*或＃搜索当前选择
" 超级有用！从Michael Naumann的想法
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 移动，制表符，窗口和缓冲区
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 当<leader> <cr>被按下时，禁用高亮
map <silent> <leader><cr> :noh<cr>

" 智能的方式在窗户之间移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 关闭当前的缓冲区
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" 关闭所有的缓冲区
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" 管理标签的实用映射
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" 让我们在这个和最后访问的选项卡之间切换
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()


" 使用当前缓冲区的路径打开一个新的选项卡
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" 将 CWD切换到打开缓冲区的目录
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" 指定在缓冲区之间切换时的行为
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

"打开文件时返回上一编辑位置（你想要这个！）
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => 状态行
""""""""""""""""""""""""""""""
" 始终显示状态行
set laststatus=2

" 格式化状态行
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 编辑映射
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 将 VIM 0重新映射到第一个非空白字符
map 0 ^

" 在Mac上使用ALT + [jk]或Command + [jk]移动一行文本
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" 删除保存后的尾随空格，对某些文件类型有用;）
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 其他
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 删除Windows ^ M  - 编码弄乱了
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" 快速打开一个缓冲区涂鸦
map <leader>q :e ~/buffer<cr>

" 快速打开一个markdown缓冲区用于涂鸦
map <leader>x :e ~/buffer.md<cr>

" 打开和关闭粘贴模式
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 助手功能
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 如果启用了粘贴模式，则返回true
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" 删除缓冲区时不要关闭窗口
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
"Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }
Plug 'ervandew/supertab'
Plug 'vim-scripts/AutoComplPop'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
"Plug 'w0rp/ale'


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
Plug 'pangloss/vim-javascript'

Plug 'ybian/smartim'

"buquan
Plug 'roxma/nvim-completion-manager'
if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}

call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
