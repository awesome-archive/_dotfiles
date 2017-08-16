"copyright 2014-2017 by iuunhao <wncss.com>
" 插件列表
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
"保存会话
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
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
Plug 'Chiel92/vim-autoformat'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'roman/golden-ratio'
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
Plug 'roxma/nvim-completion-manager'
if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'othree/csscomplete.vim'

Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'styl', 'pug'] }
Plug 'isRuslan/vim-es6'
Plug 'w0rp/ale'
Plug 'ap/vim-css-color'
Plug 'Junza/Spink'
Plug 'billyvg/tigris.nvim'
Plug 'roxma/nvim-completion-manager'
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
" ----------------------------------------------------------------------------
" 基础设置
" ----------------------------------------------------------------------------
let mapleader = ' '
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
set clipboard+=unnamedplus
set nopaste
autocmd BufWritePre * %s/\s\+$//e
set noshowmode
set noswapfile
filetype on
set  number
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set conceallevel=0
set virtualedit=
set wildmenu
set laststatus=2
set wrap linebreak nolist
set wildmode=full
autocmd BufRead * normal zz
set updatetime=500
set complete=.,w,b,u,t,k
autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
set formatoptions+=t
set shortmess=atI
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set helplang=cn
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set termguicolors
set ttimeout
set ttimeoutlen=0
set fdm=manual
set breakindent
" set cuc
" set cul
" ----------------------------------------------------------------------------
" UI设置
" ----------------------------------------------------------------------------
let g:lightline = {'colorscheme': 'one'}
set t_Co=256
let g:palenight_terminal_italics=1
" let g:seoul256_background = 236
" set background=dark
" set background=light
" colo seoul256
" colo seoul256-light
" set termguicolors
" let ayucolor="mirage"
" let ayucolor="dark"
" let ayucolor="light"
" colorscheme ayu
colorscheme dimcil
" ----------------------------------------------------------------------------
" 默认快捷键设置
" ----------------------------------------------------------------------------
noremap 0 ^
noremap Y y$
vnoremap p "_dP
vmap <C-c> "+y
noremap j gj
noremap k gk
nmap j gj
nmap k gk
nnoremap t <C-^>
map <silent> <leader><cr> :noh<cr>
map <Leader>cd :cd %:p:h<CR>
nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>h <C-W>h
map <Leader>l <C-W>l
map <Leader>T :%s/\s\+$//<CR>
nmap <leader>F :%s//g<LEFT><LEFT>
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>
nmap <silent> <Leader>pl :PlugInstall<CR>
" nnoremap <S-h> ^
" nnoremap <S-l> $
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
noremap gV `[v`]
map q: :q
map <leader>t :tabnext<cr>
map <leader>tc :tabclose<cr>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>
nnoremap <d-[> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vnoremap <d-]> zf
" ----------------------------------------------------------------------------
" 移动选中内容
" ----------------------------------------------------------------------------
nnoremap <silent> <C-k> :move-2<cr>
nnoremap <silent> <C-j> :move+<cr>
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
" dict.vim
" ----------------------------------------------------------------------------
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
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
" Neoformat
" ----------------------------------------------------------------------------
let g:neoformat_enabled_javascript = ['prettier']
nmap <leader>mf :Neoformat<cr>
" ----------------------------------------------------------------------------
" vim-maximizer
" ----------------------------------------------------------------------------
nnoremap <tab> :MaximizerToggle<CR>
" ----------------------------------------------------------------------------
" emmet
" ----------------------------------------------------------------------------
let g:user_emmet_install_global = 0
autocmd FileType html,css,pug EmmetInstall
let g:user_emmet_expandabbr_key = '<D-e>'
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
" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader> <Plug>(easymotion-prefix)
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
map <Leader>k <Plug>(easymotion-bd-jk)
nmap <Leader>k <Plug>(easymotion-overwin-line)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => bookmark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bookmark_auto_close = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nvim-completion-manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
au User CmSetup call cm#register_source({'name' : 'cm-css',
        \ 'priority': 9,
        \ 'scoping': 1,
        \ 'scopes': ['css','scss'],
        \ 'abbreviation': 'css',
        \ 'word_pattern': '[\w\-]+',
        \ 'cm_refresh_patterns':['[\w\-]+\s*:\s+'],
        \ 'cm_refresh': {'omnifunc': 'csscomplete#CompleteCSS'},
        \ })
let g:cm_sources_override = {
    \ 'cm-tags': {'enable':0}
    \ }
let g:NERDSpaceDelims=1
let g:NERDAltDelims_python = 1
let g:brightest#highlight = {"group" : "BrightestUnderline"}
let g:brightest#pattern = '\k\+'
let g:brightest#enable_filetypes = {"cpp" : 0}
let g:brightest#enable_filetypes = {
\    "_"   : 0,
\    "vim" : 1,
\    "css" : 1,
\    "html" : 1,
\    "js" : 1,
\    "md" : 1
\}
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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_buffers_jump = 1
if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

nnoremap <silent> <expr> <Leader>ff (expand('&') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader>bb  :Buffers<CR>
xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
nnoremap <silent> <leader>jl :BLines<cr>
nnoremap <silent> <leader>ft :Filetypes<cr>
nnoremap <silent> <leader>jk :Lines<cr>
nnoremap <silent> <leader>fr :History<cr>
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
    for pat in ['doc/*.txt', 'README.md', 'node_modules/']
        let match = get(split(globpath(dir, pat), "\n"), 0, '')
        if len(match)
            execute 'tabedit' match
            return
        endif
    endfor
    tabnew
    execute 'Explore' dir
endfunction
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> K :call SearchWordWithAg()<CR>
vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>

function! SearchWordWithAg()
  execute 'Ag' expand('<cword>')
endfunction

function! SearchVisualSelectionWithAg() range
  let old_reg = getreg('"')
  let old_regtype = getregtype('"')
  let old_clipboard = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', old_reg, old_regtype)
  let &clipboard = old_clipboard
  execute 'Ag' selection
endfunction
command! PlugHelp call fzf#run(fzf#wrap({
            \ 'source':  sort(keys(g:plugs)),
            \ 'sink':    function('s:plugs_sink')}))
let g:fzf_colors =
\ {'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Identifier'],
  \ 'fg+':     ['fg', 'CursorLine', 'Normal', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'Normal'],
  \ 'hl+':     ['fg', 'Identifier'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Identifier'],
  \ 'pointer': ['fg', 'Keyword'],
  \ 'marker':  ['fg', 'CursorLineNr'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment']}
" ----------------------------------------------------------------------------
" ale
" ----------------------------------------------------------------------------
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
let g:ale_linters = {'javascript': ['eslint']}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
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
