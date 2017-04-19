"""""""""""""
"  插件列表
"""""""""""""
call plug#begin('~/.vim/plugged')
"会话
Plug 'tpope/vim-obsession' | Plug 'dhruvasagar/vim-prosession'
"UI
Plug 'joshdick/onedark.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'tell-k/vim-autopep8'

"跳转
Plug 'easymotion/vim-easymotion'                            "快速搜索
Plug 'terryma/vim-multiple-cursors'                         "多点编辑
Plug 'rhysd/clever-f.vim'                                   "F增强多行搜索
"Plug 'asins/vimcdoc'                                        "中文帮助文档
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
Plug 'vim-scripts/YankRing.vim'
Plug 'tpope/vim-repeat'                                     "替换增强
Plug 'justinmk/vim-gtfo'                                    "当前文件跳转
Plug 'danro/rename.vim'                                     "文件重命名
"Plug 'mhinz/vim-signify'                                    "版本控制显示

"语言
Plug 'othree/html5.vim'
Plug 'matchit.zip'
Plug 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}
Plug 'pangloss/vim-javascript'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
"Plug 'mattn/emmet-vim', { 'for': ['html', 'css', 'javascript'] }
Plug 'isRuslan/vim-es6'
Plug 'w0rp/ale'
Plug 'ap/vim-css-color'
"Plug 'posva/vim-vue'
Plug 'Junza/Spink'
"Plug 'digitaltoad/vim-pug'
"Plug 'chemzqm/wxapp.vim'
"Plug 'wavded/vim-stylus'
"文件操作
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tweekmonster/fzf-filemru'

"Plug 'vimwiki/vimwiki'


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

set  nu
se nocul
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"UI设置
set t_Co=256
set background=dark
set guifont=Menlo:h20
silent! colo onedark

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
map <Leader>puw :!bash ~/vimwiki/push.sh<CR>
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>
nmap <silent> <Leader>pl :PlugInstall<CR>
nmap <silent> <Leader>ez :e ~/dotfiles/zhs/zshrc<CR>
nnoremap <S-h> 0
nnoremap <S-l> $
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]
noremap gV `[v`]
map q: :q
"map <leader>t :tabnext
map <leader>tc :tabclose<cr>

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
"let g:user_emmet_expandabbr_key='<d-j>'
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

let g:deoplete#enable_at_startup = 1

" ----------------------------------------------------------------------------
" YouCompleteMe
" ----------------------------------------------------------------------------
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_min_num_of_chars_for_completion = 1
"let g:ycm_complete_in_comments=1
"let g:ycm_confirm_extra_conf=0
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_collect_identifiers_from_tags_files=1
"let g:ycm_complete_in_comments = 1
"let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
"let g:ycm_complete_in_comments=1
"let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
"let g:ycm_seed_identifiers_with_syntax=1
"let g:ycm_cache_omnifunc=0
"set completeopt-=preview
"function! MyTabFunction ()
  "let line = getline('.')
  "let substr = strpart(line, -1, col('.')+1)
  "let substr = matchstr(substr, "[^ \t]*$")
  "if strlen(substr) == 0
    "return "\<tab>"
  "endif
  "return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
"endfunction

" ----------------------------------------------------------------------------
" SuperTab
" ----------------------------------------------------------------------------
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

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
" => fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_files_options = printf('--preview "%s {} | head -'.&lines.'"',
            \ g:plugs['fzf.vim'].dir.'/bin/preview.rb')

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

nmap <Leader>hv :e /Applications/XAMPP/xamppfiles/etc/extra/httpd-vhosts.conf<CR>
nmap <Leader>hh :e /etc/hosts<CR>
nmap <Leader>to :!open . & webpack -d -w<CR>

"ale
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0

language messages zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
set encoding=utf-8
set langmenu=zh_CN.UTF-8

"let g:airline_powerline_fonts = 1   
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#whitespace#enabled = 0
"let g:airline#extensions#whitespace#symbol = '!'
"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = '⭠'
"let g:airline_symbols.readonly = '⭤'


let g:vimwiki_list = [{'path': '~/vimwiki',  'template_path': '~/vimwiki/template', 'template_default': 'default.tpl', 'path_html': '~/vimwiki/vimwiki_html'}]

