set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
let anyfold_activate=1
set foldlevel=0

set t_Co=256

call plug#begin('~/.vim/plugged')
"插件

"Plug 'christoomey/vim-tmux-navigator'
"

Plug 'tyrannicaltoucan/vim-quantum'


Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'  "恢复会话

Plug 'ayu-theme/ayu-vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


"Plug 'lifepillar/vim-mucomplete'

"Plug 'rhysd/clever-f.vim'
"Plug 'pseewald/anyfold'

"Plug 'jceb/vim-orgmode'

"Plug 'Yggdroot/indentLine'

Plug 'w0ng/vim-hybrid'

Plug 'aperezdc/vim-lining'

Plug 'danro/rename.vim' "文件重命名


"Plug 'pelodelfuego/vim-swoop' "搜索

"Plug 'joshdick/onedark.vim' "配色

"Plug 'vim-airline/vim-airline' "状态栏

Plug 'szw/vim-maximizer'  "tab最大化窗口

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }  "文件管理

Plug 'sirver/ultisnips' "代码片段
"Plug 'honza/vim-snippets' "代码片段

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' } "补全

Plug 'scrooloose/nerdcommenter' "快速注释

"Plug 'mattesgroeger/vim-bookmarks'  "书签增强

Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript'] }  "emmet

Plug 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } "css颜色显示

Plug 'Chiel92/vim-autoformat' "自动格式化

"Plug 'svermeulen/vim-easyclip'

"Plug 'pangloss/vim-javascript', { 'for': ['html', 'jsx', 'javascript'] }  "js代码补全

Plug 'ternjs/tern_for_vim', { 'do': 'npm install' } "补全

"Plug 'myhere/vim-nodejs-complete'
Plug 'hail2u/vim-css3-syntax'
"Plug 'cakebaker/scss-syntax.vim'

Plug 'terryma/vim-multiple-cursors' "多点编辑

Plug 'YankRing.vim' "复制增强

Plug 'iamcco/dict.vim'  "翻译

Plug 'kien/ctrlp.vim' "文件搜索
Plug 'endel/ctrlp-filetype.vim' "快速切换文件类型

Plug 'kris2k/vim-surround'  "成对符号修改

Plug 'scrooloose/syntastic' "语法检查

Plug 'pbrisbin/vim-mkdir' "快速创建子级目录

Plug 'Lokaltog/vim-easymotion'  "光标定位

Plug 'matchit.zip'

Plug 'tpope/vim-repeat' "点命令增强

Plug 'Raimondi/delimitMate' "括号自动完成

Plug 'terryma/vim-expand-region'  "快速扩展选择内容

Plug 'roman/golden-ratio'  "自动调整窗口大小

"Plug 'tpope/vim-markdown'  "md语法

"Plug 'unblevable/quick-scope' "高亮当前行跳转位置

Plug 'ervandew/supertab'  "tab增强

"Plug 'vim-scripts/mru.vim'  "最近编辑的文件
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } "文件搜索

Plug 'junegunn/fzf.vim'
"
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'

call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)


" 基本配置
let mapleader      = ' '
let maplocalleader = ' '
set nu
"set relativenumber
"set ruler
"set noshowmode
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


if v:version >= 800
  set breakindent
endif


set nobackup
set noswapfile

"autocmd InsertEnter * :set norelativenumber
"autocmd InsertLeave * :set relativenumber

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au BufRead,BufNewFile *.scss set filetype=scss.css


"透明度
if has("gui_macvim")
    "set transparency=10
endif


" 基本快捷键
vnoremap p "_dP
"vnoremap <C-c> "*y
inoremap <C-V> <C-R>"
noremap j gj
noremap k gk
nmap j gj
nmap k gk
"nmap j jzz
"nmap k kzz

"noremap H ^
"noremap L $
noremap Y y$
nnoremap <C-s> :w<CR>
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

vmap <C-c> "+y


map <Leader>T :%s/\s\+$//<CR>

nmap <leader>F :%s//g<LEFT><LEFT>
map <Leader>push :!bash ~/dotfiles/push.sh<CR>

map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>h <C-W>h
map <Leader>l <C-W>l

cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

"noremap J <C-d>
"noremap K <C-u>
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-^> <C-o><C-^>


"UI
set background=dark
"set background=light

"colorscheme ayu
"colorscheme hybrid
colorscheme quantum

set guifont=Inconsolata_for_Powerline:h18

set cursorline



" 插件配置

" ----------------------------------------------------------------------------
" Autoformat
" ----------------------------------------------------------------------------
au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

" ----------------------------------------------------------------------------
" dict.vim
" ----------------------------------------------------------------------------
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
nmap <silent> <Leader>d <Plug>DictSearch
vmap <silent> <Leader>d <Plug>DictVSearch
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch
let g:vikiUseParentSuffix = 1


" ----------------------------------------------------------------------------
" UltiSnips
" ----------------------------------------------------------------------------
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

" ----------------------------------------------------------------------------
" vim-expand-region
" ----------------------------------------------------------------------------
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

" ----------------------------------------------------------------------------
" vim-maximizer
" ----------------------------------------------------------------------------
nnoremap <tab> :MaximizerToggle<CR>

" ----------------------------------------------------------------------------
" emmet
" ----------------------------------------------------------------------------
let g:user_emmet_expandabbr_key='<d-j>'

" ctrlp
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
let g:ctrlp_map = '<c-E>llllllllllll'
let g:ctrlp_cmd = 'CtrlP'
nnoremap <leader>r :CtrlPMRU<CR>
nnoremap <leader>bb :CtrlPBuffer<CR>
nnoremap <leader>ff :CtrlPRoot<CR>
silent! nnoremap <unique> <silent> <Leader>ft :CtrlPFiletype<CR>
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1
let g:ctrlp_extensions = ['filetype']


" ----------------------------------------------------------------------------
" easy-motion
" ----------------------------------------------------------------------------
map <Leader> <Plug>(easymotion-prefix)
map  <Leader>f <Plug>(easymotion-sn)
nmap <Leader>f <Plug>(easymotion-tn)
map <Leader>j <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)
map  <Leader><Leader> <Plug>(easymotion-bd-w)
nmap <Leader><Leader> <Plug>(easymotion-overwin-w)


"map  / <Plug>(easymotion-sn)
"omap / <Plug>(easymotion-tn)
  "map  n <Plug>(easymotion-next)
"map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)


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





"let g:mucomplete#enable_auto_at_startup = 1


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

" ----------------------------------------------------------------------------
" SuperTab
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
"vim-swoop
" ----------------------------------------------------------------------------
"let g:swoopUseDefaultKeyMap = 0
"let g:swoopIgnoreCase = 1
"let g:swoopWindowsVerticalLayout = 1



" ----------------------------------------------------------------------------
"gitgutter
" ----------------------------------------------------------------------------
" 同git diff,实时展示文件中修改的行
" 只是不喜欢除了行号多一列, 默认关闭,gs时打开
let g:gitgutter_map_keys = 0
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
nnoremap <leader>gs :GitGutterToggle<CR>

" ----------------------------------------------------------------------------
" tern_for_vim
" ----------------------------------------------------------------------------
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete


" ----------------------------------------------------------------------------
" bookmarks
" ----------------------------------------------------------------------------
"highlight BookmarkSign ctermbg=whatever ctermfg=whatever
"highlight BookmarkAnnotationSign ctermbg=whatever ctermfg=whatever
"highlight BookmarkLine ctermbg=whatever ctermfg=whatever
"highlight BookmarkAnnotationLine ctermbg=whatever ctermfg=whatever

"let g:bookmark_sign = '⚑'


" ----------------------------------------------------------------------------
"Swoop
" ----------------------------------------------------------------------------
"let g:swoopUseDefaultKeyMap = 0
"nmap <Leader>nl :call Swoop()<CR>
"vmap <Leader>nl :call SwoopSelection()<CR>
"nmap <Leader>ml :call SwoopMulti()<CR>
"vmap <Leader>ml :call SwoopMultiSelection()<CR>

" ----------------------------------------------------------------------------
"IndentLine
" ----------------------------------------------------------------------------
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆'
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0

"自定义功能
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


" ----------------------------------------------------------------------------
" buf内容搜索
" ----------------------------------------------------------------------------
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>

" ----------------------------------------------------------------------------
" 移动选中内容
" ----------------------------------------------------------------------------
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
"关闭其他缓存区
" ----------------------------------------------------------------------------
function! SpacevimKillOtherBuffers()
  if confirm('Killing all buffers except "'. @% . '"?')
    " see https://github.com/vim-scripts/BufOnly.vim/blob/master/plugin/BufOnly.vim
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


"set termguicolors
hi Pmenu ctermbg=white
hi PmenuSel ctermbg=lightblue
