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
Plug 'Chiel92/vim-autoformat'
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
Plug '1995eaton/vim-better-css-completion'
Plug 'vim-scripts/AutoComplPop'
function! BuildYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --gocode-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'for': ['c', 'cpp'], 'do': function('BuildYCM') }
Plug 'othree/javascript-libraries-syntax.vim'
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
Plug 'ctrlpvim/ctrlp.vim'
Plug 'endel/ctrlp-filetype.vim'
Plug 'vim-scripts/mru.vim'
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
set vb
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
" set termguicolors
set ttimeout
set ttimeoutlen=0
set breakindent
" set cuc
" set cul
set cindent
set autoread
set autoindent
set smartindent
set foldenable
set fdm=manual

if has("gui_running")
    "au GUIEnter * simalt ~x " 窗口启动时自动最大化
    set guioptions-=m " 隐藏菜单栏
    set guioptions-=T " 隐藏工具栏
    set guioptions-=L " 隐藏左侧滚动条
    set guioptions-=r " 隐藏右侧滚动条
    set guioptions-=b " 隐藏底部滚动条
    set showtabline=0 " 隐藏Tab栏
endif

" ----------------------------------------------------------------------------
" UI设置
" ----------------------------------------------------------------------------
set t_Co=256
let g:palenight_terminal_italics=1
let g:seoul256_background = 236
set background=dark
colo seoul256
set guifont=Inconsolata_for_Powerline:h24
"colorscheme peaksea
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
let g:user_emmet_leader_key='<leader>e'         " 当前将`<C-y>,`替换为`<leader>y,`
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
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci
" au User CmSetup call cm#register_source({'name' : 'cm-css',
        " \ 'priority': 9,
        " \ 'scoping': 1,
        " \ 'scopes': ['css','scss'],
        " \ 'abbreviation': 'css',
        " \ 'word_pattern': '[\w\-]+',
        " \ 'cm_refresh_patterns':['[\w\-]+\s*:\s+'],
        " \ 'cm_refresh': {'omnifunc': 'csscomplete#CompleteCSS'},
        " \ })
" let g:cm_sources_override = {
    " \ 'cm-tags': {'enable':0}
    " \ }
" let g:NERDSpaceDelims=1
" let g:NERDAltDelims_python = 1
" let g:brightest#highlight = {"group" : "BrightestUnderline"}
" let g:brightest#pattern = '\k\+'
" let g:brightest#enable_filetypes = {"cpp" : 0}
" let g:brightest#enable_filetypes = {
" \    "_"   : 0,
" \    "vim" : 1,
" \    "css" : 1,
" \    "html" : 1,
" \    "js" : 1,
" \    "md" : 1
" \}
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


let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }


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

"inoremap <tab> <c-r>=MyTabFunction()<cr>


" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
"let g:SuperTabDefaultCompletionType = '<C-X><C-U>'

let g:SuperTabRetainCompletionType = 2
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"


" ----------------------------------------------------------------------------
" tern_for_vim
" ----------------------------------------------------------------------------
let tern_show_signature_in_pum = 1
let tern_show_argument_hints = 'on_hold'
"autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete


let g:used_javascript_libs = 'jquery,react,vue'



function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
  exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
  exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('jade',   'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('md',     'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml',    'magenta', 'none', 'yellow', '#E70350')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf',   'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json',   'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html',   'green', 'none', 'green', '#04E703')
call NERDTreeHighlightFile('styl',   'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css',    'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js',     'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php',    'Magenta', 'none', '#ff00ff', '#151515')




""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>ff :CtrlP<cr>
map <leader>bb :CtrlPBuffer<cr>
"nnoremap <leader>fr :CtrlPMRU<CR>
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

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>fr :MRU<CR>
" ----------------------------------------------------------------------------
" Autoformat
" ----------------------------------------------------------------------------
"au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
nmap <leader>mf :autoformat<cr>

if has("gui_macvim")
    set transparency=10
endif
