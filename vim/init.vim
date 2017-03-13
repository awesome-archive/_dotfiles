"判断操作系统是否是 Windows 还是 Linux
        let g:iswindows = 0
    let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

"判断是终端还是 Gvim
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif


"""""""""""""
"  插件配置
"""""""""""""
call plug#begin('~/.vim/plugged')

"会话
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'

"UI
"Plug 'liuchengxu/space-vim-dark'
"Plug 'itchyny/lightline.vim'
"Plug 'ajh17/Spacegray.vim'
"Plug 'morhetz/gruvbox'
Plug 'junegunn/seoul256.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'c.vim'

Plug 'AlessandroYorba/Monrovia'
Plug 'morhetz/gruvbox'
Plug 'liuchengxu/space-vim-dark'

"Plug 'eugen0329/vim-esearch'

"搜索
"Plug 'mileszs/ack.vim'
"Plug 'rking/ag.vim'
"Plug 'haya14busa/incsearch.vim'
"Plug 'haya14busa/incsearch-easymotion.vim'
"Plug 'gelguy/cmd2.vim'
"Plug 'justinmk/vim-sneak'
Plug 'rhysd/clever-f.vim'


"跳转
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
"Plug 'majutsushi/tagbar'

"辅助
"Plug 'ybian/smartim'
Plug 'asins/vimcdoc'
Plug 'Chiel92/vim-autoformat'
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'roman/golden-ratio'
Plug 'szw/vim-maximizer'
Plug 'scrooloose/nerdcommenter'
Plug 'iamcco/dict.vim'
Plug 'ervandew/supertab'
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-expand-region'
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'Yggdroot/indentLine'
"Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/YankRing.vim'
"Plug 'sjl/gundo.vim'
Plug 'tpope/vim-repeat'
Plug 'mbriggs/mark.vim'
"Plug 'mattesgroeger/vim-bookmarks'
Plug 'justinmk/vim-gtfo'

Plug 'mhinz/vim-signify'
"Plug 'terryma/vim-smooth-scroll'

"语言
Plug 'othree/html5.vim'
Plug 'matchit.zip'
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
Plug 'pangloss/vim-javascript'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript'] }
Plug 'isRuslan/vim-es6'
"Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
Plug 'ap/vim-css-color'
"Plug 'posva/vim-vue'
Plug 'Junza/Spink'
Plug 'chemzqm/wxapp.vim'
"Plug 'godlygeek/tabular'
Plug 'wavded/vim-stylus'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"let g:deoplete#enable_at_startup = 1

"文件操作
Plug 'scrooloose/nerdtree'

if g:isGUI
    Plug 'kien/ctrlp.vim'
    Plug 'endel/ctrlp-filetype.vim'
else
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'tweekmonster/fzf-filemru'
endif

"git
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'

call plug#end()
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)

"""""""""""""
"  基础设置
"""""""""""""
set history=500
filetype plugin on
filetype indent on
set autoread
let mapleader = " "
let g:mapleader = " "
set cursorline
set so=5
set termencoding=utf-8
"set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
let helptags=$VIM."/vimfiles/doc"
set helplang=cn
set wildmenu
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
set ruler
set cmdheight=1
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
syntax enable
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set lbr
set tw=500
set ai
set si
set wrap
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=m
set guioptions-=T
set breakindent
set clipboard=unnamed
set matchtime=5

"set relativenumber
set  nu
"autocmd InsertLeave * :set relativenumber
"autocmd InsertEnter * :set number
se nocul
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"UI设置
"set t_Co=256
"set background=dark
"set background=light
    "colorscheme Spacegray
"set termguicolors
"colorscheme gruvbox
"colorscheme space-vim-dark
colorscheme seoul256
"hi Comment cterm=italic

if has('gui_running')
  set guifont=Menlo:h14 columns=80 lines=40
  silent! colo seoul256-light
else
  silent! colo seoul256-light
endif



"""""""""""""
"  默认快捷键设置
"""""""""""""
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
map <Leader>push :!bash ~/dotfiles/scripts/push.sh<CR>
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>
nmap <silent> <Leader>pl :PlugInstall<CR>
nmap <silent> <Leader>ez :e ~/dotfiles/zhs/zshrc<CR>
nnoremap <S-h> 0
nnoremap <S-l> $
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

nnoremap <CR> G
nnoremap <BS> gg

noremap gV `[v`]
map q: :q

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>t<leader> :tabnext
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove


"nnoremap <tab>   <c-w>w

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


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

" ----------------------------------------------------------------------------
" Autoformat
" ----------------------------------------------------------------------------
"au BufWrite * :Autoformat
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
" emmet
" ----------------------------------------------------------------------------
if g:iswindows
    let g:user_emmet_expandabbr_key='<a-j>'
else
    let g:user_emmet_expandabbr_key='<d-j>'
endif


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
let NERDTreeDirArrows=2
let NERDTreeHighlightCursorline=1
let g:NERDTreeMapOpenSplit = 's'
let g:NERDTreeMapOpenVSplit = 'v'
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$', '\~$', '\.pyc$', '\.swp$', '\.DS_Store']
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

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
"let g:syntastic_style_error_symbol='»'
"let g:syntastic_error_symbol='ㄨ'
"let g:syntastic_warning_symbol='﹗'
"let g:syntastic_check_on_open=0
"let g:syntastic_check_on_wq=0
"let g:syntastic_enable_highlighting=1
"let g:syntastic_javascript_checkers = ['jsl', 'jshint', 'es6']
"let g:syntastic_html_checkers=['tidy', 'jshint']

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
"autocmd FileType javascript nnoremap <leader>d :TernDef<CR>
autocmd FileType javascript setlocal omnifunc=tern#Complete


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
" => incsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map / <Plug>(incsearch-easymotion-/)
"map ? <Plug>(incsearch-easymotion-?)
"map g/ <Plug>(incsearch-easymotion-stay)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>fh :GundoToggle<cr>

"let g":spacegray_italicize_comments = 1
"let g:spacegray_underline_search = 1

if g:isGUI
    """"""""""""""""""""""""""""""
    " => CTRL-P
    """"""""""""""""""""""""""""""
    "let g:ctrlp_working_path_mode = 0

    "let g:ctrlp_map = '<c-f>'
    "map <leader>ff :CtrlP<cr>
    "map <leader>bb :CtrlPBuffer<cr>
    "let g:ctrlp_max_depth = 100
    "nnoremap <leader>fr :CtrlPMRU<CR>
    "silent! nnoremap <unique> <silent> <Leader>ft :CtrlPFiletype<CR>
      "let g:ctrlp_custom_ignore = {
        "\ 'dir':  '\v[\/]\.(git|hg|svn|rvm|Trash)$',
        "\ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|DS_Store)$',
        "\ }
    "set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif " MacOSX/Linux
    "set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows
    "let g:ctrlp_working_path_mode=0
    "let g:ctrlp_match_window_bottom=1
    "let g:ctrlp_max_height=15
    "let g:ctrlp_match_window_reversed=0
    "let g:ctrlp_mruf_max=500
    "let g:ctrlp_follow_symlinks=1
    "let g:ctrlp_extensions = ['filetype']

    "let g:ctrlp_max_height = 50
    "let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'

    " CTRLP
    
    map <leader>ff :CtrlP<cr>
    map <leader>bb :CtrlPBuffer<cr>
    nnoremap <leader>fr :CtrlPMRU<CR>
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
          \ --ignore .git
          \ --ignore .svn
          \ --ignore .hg
          \ --ignore .DS_Store
          \ --ignore .logs
          \ --ignore .log
          \ --ignore .idea
          \ --ignore .swp
          \ --ignore "**/*.pyc"
          \ -g ""'

    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ }
else
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    " => fzf
    """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
    set rtp+=~/.fzf
    map <leader>ff :FZF<cr>
    map <leader>bb :Buffers<cr>
    map <leader>fw :Windows<cr>
    map <leader>fr :History<cr>
    "map <leader>spp :Snippets<cr>
    map <leader>ft :Filetypes<cr>
    "map <leader>he :Helptags<cr>
    map <leader>ma :Marks<cr>
    map <leader>ta :BTags<cr>
    "map <leader>co :Colors<cr>
    map <leader>jk :BLines<cr>
    map <leader>kl :Lines<cr>
    "map <leader>tl :Tags<cr>
endif





"macmenu &File.Close key=<nop>
nmap <D-w> :CommandW<CR>
imap <D-w> <Esc>:CommandW<CR>





nmap <Leader>hv :e /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf<CR>
nmap <Leader>hh :e /etc/hosts<CR>
nmap <Leader>to :!open . & webpack -d -w<CR>



"let g:lightline = {
      "\ 'colorscheme': 'wombat',
      "\ 'component': {
      "\   'readonly': '%{&readonly?"⭤":""}',
      "\ }
      "\ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Bookmark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
let g:bookmark_highlight_lines = 1


"ale
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0

"Sneak
"nmap f <Plug>Sneak_s
"nmap F <Plug>Sneak_S
"xmap f <Plug>Sneak_s
"xmap F <Plug>Sneak_S
"omap f <Plug>Sneak_s
"omap F <Plug>Sneak_S

"clever-f.vim



"smooth_scroll
"noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
"noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
"noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
"noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>




set ambiwidth=double
language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set encoding=utf-8
set langmenu=zh_CN.UTF-8
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1



"编译c
map <Leader>c :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    exec "!gcc % -o %<"
    exec "! ./%<"
endfunc


" AirLine Settings
hi paste       cterm=bold ctermfg=149 ctermbg=239 gui=bold guifg=#99CC66 guibg=#3a3a3a
hi ale_error   cterm=None ctermfg=197 ctermbg=237 gui=None guifg=#CC0033 guibg=#3a3a3a
hi ale_warning cterm=None ctermfg=214 ctermbg=237 gui=None guifg=#FFFF66 guibg=#3a3a3a

hi User1 cterm=bold ctermfg=232 ctermbg=179 gui=Bold guifg=#333300 guibg=#FFBF48
hi User2 cterm=None ctermfg=214 ctermbg=243 gui=None guifg=#FFBB7D guibg=#666666
hi User3 cterm=None ctermfg=251 ctermbg=241 gui=None guifg=#c6c6c6 guibg=#585858
hi User4 cterm=Bold ctermfg=177 ctermbg=239 gui=Bold guifg=#d75fd7 guibg=#4e4e4e
hi User5 cterm=None ctermfg=208 ctermbg=238 gui=None guifg=#ff8700 guibg=#3a3a3a
hi User6 cterm=Bold ctermfg=178 ctermbg=237 gui=Bold guifg=#FFE920 guibg=#444444
hi User7 cterm=None ctermfg=250 ctermbg=238 gui=None guifg=#bcbcbc guibg=#444444
hi User8 cterm=None ctermfg=249 ctermbg=239 gui=None guifg=#b2b2b2 guibg=#4e4e4e
hi User9 cterm=None ctermfg=249 ctermbg=241 gui=None guifg=#b2b2b2 guibg=#606060

let g:airline_left_sep=''
let g:airline_right_sep=''

let g:airline_symbols = {}
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.whitespace = 'Ξ'
