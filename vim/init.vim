"初始化配置
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
"  插件列表
"""""""""""""
call plug#begin('~/.vim/plugged')

"会话
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'

"UI
Plug 'junegunn/seoul256.vim'
"Plug 'AlessandroYorba/Monrovia'
"Plug 'morhetz/gruvbox'
"Plug 'liuchengxu/space-vim-dark'
Plug 'joshdick/onedark.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"搜索
"Plug 'mileszs/ack.vim'
"Plug 'rking/ag.vim'
"Plug 'haya14busa/incsearch.vim'
"Plug 'haya14busa/incsearch-easymotion.vim'
"Plug 'gelguy/cmd2.vim'
"Plug 'justinmk/vim-sneak'
"Plug 'eugen0329/vim-esearch'

Plug 'tomasr/molokai'

"跳转
Plug 'easymotion/vim-easymotion'                            "快速搜索
Plug 'terryma/vim-multiple-cursors'                         "多点编辑
Plug 'rhysd/clever-f.vim'                                   "F增强多行搜索
Plug 'asins/vimcdoc'                                        "中文帮助文档
Plug 'Chiel92/vim-autoformat'                               "自动格式化
Plug 'sirver/ultisnips'                                     "代码片段
Plug 'honza/vim-snippets'                                   "代码片段
"Plug 'roman/golden-ratio'                                   "窗口自动缩放
Plug 'szw/vim-maximizer'                                    "窗口最大化
Plug 'scrooloose/nerdcommenter'                             "注释插件
Plug 'iamcco/dict.vim'                                      "翻译插件
Plug 'ervandew/supertab'                                    "TAB增强
Plug 'Raimondi/delimitMate'
Plug 'terryma/vim-expand-region'                            "V选择增强
"Plug 'kien/rainbow_parentheses.vim'
"Plug 'Yggdroot/indentLine'
"Plug 'bronson/vim-trailing-whitespace'
"Plug 'vim-scripts/YankRing.vim'
"Plug 'sjl/gundo.vim'
Plug 'tpope/vim-repeat'                                     "替换增强
"Plug 'mbriggs/mark.vim'
"Plug 'mattesgroeger/vim-bookmarks'
Plug 'justinmk/vim-gtfo'                                    "当前文件跳转
Plug 'danro/rename.vim'                                     "文件重命名
Plug 'mhinz/vim-signify'                                    "版本控制显示
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
Plug 'posva/vim-vue'
Plug 'Junza/Spink'
"Plug 'chemzqm/wxapp.vim'
"Plug 'godlygeek/tabular'
Plug 'wavded/vim-stylus'
Plug 'c.vim'

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
set t_Co=256
set background=dark
let g:rehash256 = 1
"set background=light
    "colorscheme Spacegray
set termguicolors
"colorscheme gruvbox
"colorscheme space-vim-dark

if has('gui_running')
  set guifont=Menlo:h20
  silent! colo onedark
else
  "silent! colo seoul256
  silent! colo onedark
"let g:molokai_original = 1
"colorscheme molokai
  "silent! colo seoul256-light
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
let NERDTreeQuitOnOpen=0
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
    let g:fzf_files_options = printf('--preview "%s {} | head -'.&lines.'"',
          \ g:plugs['fzf.vim'].dir.'/bin/preview.rb')

    " nnoremap <silent> <Leader>ff :Files<CR>
    nnoremap <silent> <expr> <Leader>ff (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
    nnoremap <silent> <Leader>C        :Colors<CR>
    nnoremap <silent> <Leader>bb  :Buffers<CR>
    nnoremap <silent> <Leader>ag       :Ag <C-R><C-W><CR>
    nnoremap <silent> <Leader>AG       :Ag <C-R><C-A><CR>
    xnoremap <silent> <Leader>ag       y:Ag <C-R>"<CR>
    nnoremap <leader>jk :BLines<cr>
    nnoremap <silent> <leader>ft :Filetypes<cr>
    nnoremap <silent> <leader>kl :Lines<cr>
    nnoremap <silent> <leader>fr :History<cr>
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
endif


"macmenu &File.Close key=<nop>





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




language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set encoding=utf-8
set langmenu=zh_CN.UTF-8



"编译c
map <Leader>c :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    exec "!gcc % -o %<"
    exec "! ./%<"
endfunc



"状态栏
function! S_buf_num()
    let l:circled_num_list = ['① ', '② ', '③ ', '④ ', '⑤ ', '⑥ ', '⑦ ', '⑧ ', '⑨ ', '⑩ ',
                \             '⑪ ', '⑫ ', '⑬ ', '⑭ ', '⑮ ', '⑯ ', '⑰ ', '⑱ ', '⑲ ', '⑳ ']

    return bufnr('%') > 20 ? bufnr('%') : l:circled_num_list[bufnr('%')-1]
endfunction

function! S_buf_total_num()
    return len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
endfunction

function! S_full_path()
    if &filetype ==# 'startify'
        return ''
    else
        return expand('%:p:t')
    endif
endfunction

function! S_fugitive()
    if !exists('g:loaded_fugitive')
        return ''
    endif
    let l:head = fugitive#head()
    return empty(l:head) ? '' : ' ⎇ '.l:head . ' '
endfunction

function! S_ale_error()
    if !exists('g:loaded_ale')
        return ''
    endif
    return !empty(ALEGetError())?ALEGetError():''
endfunction

function! S_ale_warning()
    if !exists('g:loaded_ale')
        return ''
    endif
    return !empty(ALEGetWarning())?ALEGetWarning():''
endfunction

 function! ALEGetError()
     let l:res = ale#statusline#Status()
     if l:res ==# 'OK'
         return ''
     else
         let l:e_w = split(l:res)
         if len(l:e_w) == 2 || match(l:e_w, 'E') > -1
             return ' •' . matchstr(l:e_w[0], '\d\+') .' '
         endif
     endif
 endfunction

 function! ALEGetWarning()
     let l:res = ale#statusline#Status()
     if l:res ==# 'OK'
         return ''
     else
         let l:e_w = split(l:res)
         if len(l:e_w) == 2
             return ' •' . matchstr(l:e_w[1], '\d\+')
         elseif match(l:e_w, 'W') > -1
             return ' •' . matchstr(l:e_w[0], '\d\+')
         endif
     endif
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

function! MyStatusLine()
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

    if has('gui_running')
        let l:buf_num = '%1* [B-%n] [W-%{winnr()}] %*'
    else
        let l:buf_num = '%1* %{S_buf_num()} ❖ %{winnr()} %*'
    let l:tot = '%2*[TOT:%{S_buf_total_num()}]%*'
    let l:fs = '%3* %{File_size(@%)} %*'
    let l:fp = '%4* %{S_full_path()} %*'
    let l:paste = "%#paste#%{&paste?'⎈ paste ':''}%*"
    let l:ale_e = '%#ale_error#%{S_ale_error()}%*'
    let l:ale_w = '%#ale_warning#%{S_ale_warning()}%*'
    let l:git = '%6*%{S_fugitive()}%*'
    let l:m_r_f = '%7* %m%r%y %*'
    let l:ff = '%8* %{&ff} |'
    let l:enc = " %{''.(&fenc!=''?&fenc:&enc).''} | %{(&bomb?\",BOM\":\"\")}"
    let l:pos = '%l:%c%V %*'
    let l:pct = '%9* %P %*'

    hi User1 cterm=bold ctermfg=232 ctermbg=179
    hi User2 cterm=None ctermfg=214 ctermbg=242
    hi User3 cterm=None ctermfg=251 ctermbg=240
    hi User4 cterm=bold ctermfg=169 ctermbg=239
    hi User5 cterm=None ctermfg=208 ctermbg=238
    hi User6 cterm=None ctermfg=246 ctermbg=237
    hi User7 cterm=None ctermfg=250 ctermbg=238
    hi User8 cterm=None ctermfg=249 ctermbg=240

    return l:buf_num.l:tot.'%<'.l:fs.l:fp.l:git.l:paste.l:ale_e.l:ale_w.
                \   '%='.l:m_r_f.l:ff.l:enc.l:pos.l:pct
endfunction
"set statusline=%!MyStatusLine()


" ----------------------------------------------------------------------------
" <F8> | Color scheme selector
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" :CopyRTF
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
  hi Normal ctermbg=NONE guibg=NONE

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
command! -range=% -nargs=? -complete=customlist,s:colors CopyRTF call s:copy_rtf(<line1>, <line2>, <f-args>)



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

let g:airline_powerline_fonts = 1   

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#whitespace#symbol = '!'
"set guifont=Consolas\ for\ Powerline\ FixedD:h11
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.readonly = '⭤'
