"copyright 2014-2017 by iuunhao <wncss.com>
" 插件列表
" ----------------------------------------------------------------------------
" ----------------------------------------------------------------------------

call plug#begin('~/.vim/plugged')

"保存会话
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'

" Plug 'osyo-manga/vim-brightest'
" Plug 'jacoborus/tender'

"UI
" Plug 'itchyny/lightline.vim'
" Plug 'ayu-theme/ayu-vim'
Plug 'junegunn/seoul256.vim'

"辅助增强
"Plug 'Shougo/denite.nvim'
"Plug 'vimwiki/vimwiki'
" Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'                         "多点编辑
Plug 'easymotion/vim-easymotion'                            "快速搜索
Plug 'rhysd/clever-f.vim'                                   "F增强多行搜索
" Plug 'asins/vimcdoc'                                        "中文帮助文档
Plug 'Chiel92/vim-autoformat'                               "自动格式化
Plug 'sirver/ultisnips'                                     "代码片段
Plug 'honza/vim-snippets'                                   "代码片段
Plug 'roman/golden-ratio'                                   "窗口自动缩放
Plug 'szw/vim-maximizer'                                    "窗口最大化
Plug 'scrooloose/nerdcommenter'                             "注释插件
Plug 'iamcco/dict.vim'                                      "翻译插件
Plug 'Raimondi/delimitMate'
" Plug 'terryma/vim-expand-region'                            "V选择增强
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-repeat'                                     "替换增强
" Plug 'justinmk/vim-gtfo'                                    "当前文件跳转
Plug 'danro/rename.vim'                                     "文件重命名
Plug 'mhinz/vim-signify'                                    "版本控制显示
Plug 'ervandew/supertab'

"语言
Plug 'vim-scripts/matchit.zip'
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
Plug 'pangloss/vim-javascript'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'roxma/nvim-completion-manager'
if !has('nvim')
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'roxma/nvim-cm-tern',  {'do': 'npm install'}
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'othree/csscomplete.vim'

"Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'styl', 'pug'] }
Plug 'isRuslan/vim-es6'
"Plug 'w0rp/ale'
Plug 'ap/vim-css-color'
Plug 'Junza/Spink'
" Plug 'digitaltoad/vim-pug'
" Plug 'wavded/vim-stylus'
Plug 'billyvg/tigris.nvim'
Plug 'roxma/nvim-completion-manager'
Plug 'othree/yajs.vim'
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'moll/vim-node'
Plug 'hail2u/vim-css3-syntax', {'for':['css','scss', 'styl', 'less']}
" Plug 'valloric/MatchTagAlways', { 'for': ['html', 'css', 'javascript'] }
Plug 'posva/vim-vue'
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
"set breakindentopt+=sbr
set breakindent
" ----------------------------------------------------------------------------
" UI设置
" ----------------------------------------------------------------------------
set t_Co=256
"set guifont=Menlo:h20
set background=dark
let g:palenight_terminal_italics=1
let g:lightline = { 'colorscheme': 'one' }

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
nnoremap <leader>mf :Autoformat<CR>

map <Leader>r :!node %<CR>

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
" ----------------------------------------------------------------------------
" Autoformat
" ----------------------------------------------------------------------------
let g:autoformat_autoindent = 0
let g:autoformat_remove_trailing_spaces = 0
let g:autoformat_retab = 0
" ----------------------------------------------------------------------------
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
" vim-maximizer
" ----------------------------------------------------------------------------
nnoremap <tab> :MaximizerToggle<CR>
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
let NERDTreeQuitOnOpen=0
let NERDTreeChDirMode=2
let NERDTreeDirArrows=2
let NERDTreeHighlightCursorline=1
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '\~$', '\.pyc$', '\.swp$', '\.DS_Store']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end
" ----------------------------------------------------------------------------
" deoplete
" ----------------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'
" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2
" ----------------------------------------------------------------------------
"gitgutter
" ----------------------------------------------------------------------------
let g:gitgutter_map_keys = 0
let g:gitgutter_enabled = 0
let g:gitgutter_highlight_lines = 1
nnoremap <leader>gs :GitGutterToggle<CR>
" ----------------------------------------------------------------------------
" tern_for_vim
" ----------------------------------------------------------------------------
"let tern_show_signature_in_pum = 1
"let tern_show_argument_hints = 'on_hold'
"autocmd FileType javascript setlocal omnifunc=tern#Complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-expand-region
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader> <Plug>(easymotion-prefix)
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
nmap <Leader><Leader>w <Plug>(easymotion-overwin-w)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_files_options = printf('--preview "%s {} | head -'.&lines.'"',
            \ g:plugs['fzf.vim'].dir.'/bin/preview.rb')
nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files \<cr>"
nnoremap <silent> <Leader>C        :Colors<CR>
nnoremap <silent> <Leader>bb  :Buffers<CR>
nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
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
    for pat in ['doc/*.txt', 'README.md']
        let match = get(split(globpath(dir, pat), "\n"), 0, '')
        if len(match)
            execute 'tabedit' match
            return
        endif
    endfor
    tabnew
    execute 'Explore' dir
endfunction
command! PlugHelp call fzf#run(fzf#wrap({
            \ 'source':  sort(keys(g:plugs)),
            \ 'sink':    function('s:plugs_sink')}))
" ----------------------------------------------------------------------------
" ale
" ----------------------------------------------------------------------------
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
"let g:ale_linters = {'javascript': ['eslint']}
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
" ----------------------------------------------------------------------------
" vimWiki
" ----------------------------------------------------------------------------
let g:vimwiki_list = [{'path': '~/vimwiki',  'template_path': '~/vimwiki/template', 'template_default': 'default.tpl', 'path_html': '~/vimwiki/vimwiki_html'}]
" ----------------------------------------------------------------------------
" deoplete-ternjs
" ----------------------------------------------------------------------------
let g:tern#filetypes = ['jsx', 'javascript.jsx', 'vue']

" ----------------- -----------------------------------------------------------
" denite
" ----------------------------------------------------------------------------
"nnoremap <silent> <C-p> :Denite command<CR>
"call denite#custom#map('insert', '<ESC>', '<denite:quit>',
    "\ 'noremap')
"call denite#custom#map('insert', 'jj', '<denite:enter_mode:normal>',
    "\ 'noremap')
"call denite#custom#map('insert', '<C-j>', '<denite:move_to_next_line>',
    "\ 'noremap')
"call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>',
    "\ 'noremap')
"call denite#custom#map('insert', '<C-k>', '<denite:move_to_previous_line>',
    "\ 'noremap')
"call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>',
    "\ 'noremap')
"call denite#custom#map('insert', '<C-d>', '<denite:scroll_window_downwards>',
            "\ 'noremap')
"call denite#custom#map('insert', '<C-u>', '<denite:scroll_window_upwards>',
            "\ 'noremap')
"call denite#custom#map('insert', '<C-h>', '<denite:move_caret_to_left>',
            "\ 'noremap')
"call denite#custom#map('insert', '<C-l>', '<denite:move_caret_to_right>',
            "\ 'noremap')
" ----------------------------------------------------------------------------
" 自定义命令
" ----------------------------------------------------------------------------
map <Leader>hv :e /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf<CR>
map <Leader>hh :e /etc/hosts<CR>
map <Leader>to :!open .<CR>
map <Leader>push :!bash ~/dotfiles/scripts/push.sh<CR>
map <Leader>puw :!bash ~/vimwiki/push.sh<CR>
map <silent> <Leader>ez :e ~/dotfiles/zsh/zshrc<CR>
map <silent> <Leader>sdemo :!touch index.html & touch app.js & touch css.less<CR>


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

let g:seoul256_background = 234
colo seoul256


let g:user_emmet_install_global = 0
autocmd FileType html,css,pug EmmetInstall
let g:user_emmet_expandabbr_key = '<D-e>'


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


" autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType java set omnifunc=javacomplete#Complete
" if has("autocmd") && exists("+omnifunc")
     " autocmd Filetype *
   " \ if &omnifunc == "" |
   " \   setlocal omnifunc=syntaxcomplete#Complete |
   " \ endif
" endif
" let g:rubycomplete_buffer_loading = 1
" let g:rubycomplete_classes_in_global = 1
" "let g:rubycomplete_rails = 1

" BrightestEnable

" BrightestDisable
"

let g:brightest#highlight = {
\   "group" : "BrightestUnderline"
\}

let g:brightest#pattern = '\k\+'


let g:brightest#enable_filetypes = {
\    "cpp" : 0
\}

let g:brightest#enable_filetypes = {
\    "_"   : 0,
\    "vim" : 1,
\    "css" : 1,
\    "html" : 1,
\    "js" : 1,
\    "md" : 1
\}

" let g:lightline = { 'colorscheme': 'tender' }
"
"


let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_buffers_jump = 1
" let g:fzf_commands_expect = 'alt-enter,ctrl-x'



