""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     Vim-Config
"                                     2016.8.12
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     插件引入
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim/bundles.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     避免乱码
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set foldlevel=100
set showcmd
set noerrorbells
set novisualbell
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     基础设置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
let g:mapleader = " "
syntax enable
set nu
set relativenumber
set go=
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set nocompatible
set formatoptions=tcrqn
set autoread
set nobackup
set magic
set guioptions-=T
set guioptions-=m
set foldcolumn=0
set foldmethod=indent
set foldlevel=3
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set confirm
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set smarttab
set history=1000
set nobackup
set noswapfile
set ignorecase
set hlsearch
set incsearch
set gdefault
set laststatus=2
filetype on
filetype indent on
set viminfo+=!
set iskeyword+=_,$,@,%,#,-
set wildmenu
set backspace=2
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set report=0
set showmatch
set matchtime=1
set scrolloff=10
filetype plugin indent on
set completeopt=longest,menu
set clipboard+=unnamed
set linespace=6
set laststatus=2
set foldlevelstart=99
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

au BufRead,BufNewFile,BufEnter * cd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     配色
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
	set background=dark
	"colorscheme desert
	"colorscheme solarized
	colorscheme tomorrow
	"colorscheme distinguished
	"colorscheme vividchalk
	"colorscheme Tomorrow-Night-Eighties
	"colorscheme gruvbox
else
	"colorscheme tomorrow
	colorscheme dracula
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     字体                                     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("mac") || has("macunix")
	"set guifont=Source_Code_Pro_Light:h18
	"set guifont=Hack:h18
	"set guifont=Inconsolata_for_Powerline:h20
	"set guifont=Anonymice_Powerline:h20
	"set guifont=DejaVu_Sans_Mono_for_Powerline:h20
	set guifont=Literation_Mono_Powerline:h18
	"set guifont=Fura_Powerline:h20
	"set guifont=Ubuntu_Mono_derivative_Powerline:h20
else
	set guifont=Source_Code_Pro_Light:h18
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  修改默认快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader><cr> :noh<cr>

noremap <silent> <C-left> :bprev<CR>
noremap <silent> <C-h> :bprev<CR>
noremap <silent> <C-right> :bnext<CR>
noremap <silent> <C-l> :bnext<CR>

nnoremap <Leader>h <C-w>h
nnoremap <Leader>l <C-w>l
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k

noremap H ^
noremap L $

nmap j gj
nmap k gk

inoremap jj <esc>

map ,cd :cd %:p:h<CR>

nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>es :so $MYVIMRC<CR>

nnoremap <leader>\ :vs<CR>
nnoremap <leader>- :sp<CR>

map <C-A> ggVGY
map! <C-A> <Esc>ggVGY

vmap <C-c> "+y

nmap <D-]> >>
nmap <D-[> <<

map <Leader>T :%s/\s\+$//<CR>

nmap <leader>F :%s//g<LEFT><LEFT>

nnoremap ; :

inoremap <C-a> <Left>
inoremap <C-s> <Down>
inoremap <C-w> <Up>
inoremap <C-d> <Right>

nnoremap <leader>m  :<c-u><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    插件配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 easy-motion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_leader_key = '<Leader>'

map <Leader>y <Plug>(easymotion-bd-jk)
nmap <Leader>y <Plug>(easymotion-overwin-line)

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

map  f <Plug>(easymotion-sn)
omap f <Plug>(easymotion-tn)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Nerd Tree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=0
let g:netrw_winsize = 35
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"

map <Leader>n :NERDTreeMirror<CR>
map <Leader>n :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  nerdcommenter
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDSpaceDelims=1
let NERDCompactSexyComs=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  emmet
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_expandabbr_key='<d-j>'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  SuperTab
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   ctrlp
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   tagbar
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   gundo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F1> :GundoToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:airline_theme="dracula"
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
nnoremap <C-N> :bn<CR>
nnoremap <C-P> :bp<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    MRU
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let MRU_Max_Entries = 600
map <leader>r :MRU<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    bufExplorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0
"let g:bufExplorerShowRelativePath=1
"let g:bufExplorerFindActive=1
"let g:bufExplorerSortBy='name'
"map <leader>b :BufExplorer<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Vimroom
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=0
let g:goyo_margin_top = 0
let g:goyo_margin_bottom = 0
nnoremap <silent> <leader>z :Goyo<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Session
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set sessionoptions=blank,buffers,curdir,folds,tabpages,winsize
nmap <leader>sl :SessionList<CR>
nmap <leader>ss :SessionSave<CR>
nmap <leader>sc :SessionClose<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 vim-expand-region
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 bufferhint
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader><leader> :call bufferhint#Popup()<CR>
nnoremap \ :call bufferhint#LoadPrevious()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Ack
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>a :Ack!<Space>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 table-mode
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:table_mode_corner="|"
let g:table_mode_corner_corner="+"
let g:table_mode_header_fillchar="="

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 UltiSnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  TaskList
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>d <Plug>TaskList

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 cursorline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
function! MyTabFunction ()
	let line = getline('.')
	let substr = strpart(line, -1, col('.')+1)
	let substr = matchstr(substr, "[^ \t]*$")
	if strlen(substr) == 0
		return "\<tab>"
	endif
	return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
inoremap <tab> <c-r>=MyTabFunction()<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 tabular
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:table_mode_corner="|"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 在打开文件的时候检查
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
"set error or warning signs
"let g:syntastic_error_symbol = '✗'
let g:syntastic_error_symbol = 'ㄨ'
"let g:syntastic_warning_symbol = '•'
let g:syntastic_warning_symbol = '⚠️'
"whether to show balloons
let g:syntastic_enable_balloons = 1
let g:syntastic_always_populate_loc_list = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 matchtag
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:hamlet_prevent_invalid_nesting = 0
let g:hamlet_highlight_trailing_space = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  sourcebeautify.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufRead,BufNewFile *.json setf jsonk

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  dict.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:api_key = "1932136763"
let g:keyfrom = "aioiyuuko"
nmap <silent> <Leader>d <Plug>DictSearch
" --普通模式下，<Leader>d 即可翻译光标下的文本，并在命令行回显
vmap <silent> <Leader>d <Plug>DictVSearch
" --可视化模式下，<Leader>d 即可翻译选中的文本，并在命令行回显
nmap <silent> <Plug>DictWSearch
" --普通模式下，<Leader>w 即可翻译光标下的文本，并且在Dict新窗口显示
vmap <silent> <Plug>DictWVSearch
" --可视化模式下，<Leader>w 即可翻译选中的文本，并且在Dict新窗口显示
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
" --普通模式下，<Leader><Leader>r 即可翻译光标下的单词，并替换为翻译的结果
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch
" --可视化模式下，<Leader><Leader>r 即可翻译光标下的单词，并替换为翻译的结果
