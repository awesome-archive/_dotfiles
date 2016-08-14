""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     Vim-Config
"                                     2016.8.12
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     Plug-in to introduce
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source ~/dotfiles/vim/bundles.vim
"source ~/dotfiles/vim/plug.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     To avoid the code
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
set encoding=utf8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     infrastructure
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " "
let g:mapleader = " "
syntax enable
set nu
"set relativenumber
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

"  pen the file automatically change directory
"au BufRead,BufNewFile,BufEnter * cd %:p:h

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    The theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
	set background=dark
	colorscheme desert
	"colorscheme solarized
	"colorscheme tomorrow
	"colorscheme distinguished
	"colorscheme vividchalk
	"colorscheme Tomorrow-Night-Eighties
	"colorscheme gruvbox
	colorscheme dracula
else
	"colorscheme tomorrow
	colorscheme dracula
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     The font
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("mac") || has("macunix")
	"set guifont=Source_Code_Pro_Light:h18
	"set guifont=Hack:h18
	"set guifont=Inconsolata_for_Powerline:h20
	"set guifont=Anonymice_Powerline:h20
	"set guifont=DejaVu_Sans_Mono_for_Powerline:h20
	set guifont=Literation_Mono_Powerline_Nerd_Font_Plus_Font_Awesome_Mono_Windows_Compatible:h18
	"set guifont=Literation_Mono_Powerline:h18
	"set guifont=Fura_Powerline:h20
	"set guifont=Ubuntu_Mono_derivative_Powerline:h20
else
	set guifont=Source_Code_Pro_Light:h18
endif

let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Change the default shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <silent> <leader><cr> :noh<cr>

"noremap <silent> <C-left> :bprev<CR>
"noremap <silent> <C-h> :bprev<CR>
"noremap <silent> <C-right> :bnext<CR>
"noremap <silent> <C-l> :bnext<CR>

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

nnoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]

command! Bigger  :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)+1', '')
command! Smaller :let &guifont = substitute(&guifont, '\d\+$', '\=submatch(0)-1', '')


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    The plug-in configuration
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
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
    \ }
let g:ctrlp_working_path_mode=0
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_height=15
let g:ctrlp_match_window_reversed=0
let g:ctrlp_mruf_max=500
let g:ctrlp_follow_symlinks=1


let g:ctrlp_extensions = ['funky', 'filetype','F']
silent! nnoremap <unique> <silent> <Leader>ii :CtrlPFiletype<CR>


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
vmap <silent> <Leader>d <Plug>DictVSearch
nmap <silent> <Plug>DictWSearch
vmap <silent> <Plug>DictWVSearch
nmap <silent> <Leader><Leader>r <Plug>DictRSearch
vmap <silent> <Leader><Leader>r <Plug>DictRVSearch



let g:vikiUseParentSuffix = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Move
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:move_key_modifier = 'C'
noremap <C-k>   Move current line/selections up
noremap <C-j>   Move current line/selections down



nmap <leader>il :IndentLinesToggle<CR>

" 设置Gvim的对齐线样式
if g:isGUI
    let g:indentLine_char = "┊"
    let g:indentLine_first_char = "┊"
endif

" 设置终端对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
let g:indentLine_color_term = 239

" 设置 GUI 对齐线颜色，如果不喜欢可以将其注释掉采用默认颜色
let g:indentLine_color_gui = '#A4E57E'





highlight BookmarkSign ctermbg=NONE ctermfg=160
highlight BookmarkLine ctermbg=194 ctermfg=NONE
"let g:bookmark_sign = '♥'
let g:bookmark_highlight_lines = 1



"#############################################################################
"###                            UNITETUNES                                 ###
"#############################################################################
if exists('g:loaded_unitetunes')
  finish
elseif v:version < 703
  echoerr 'unitetunes.vim does not work on Vim "' . v:version . '".'
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

set encoding=utf-8
scriptencoding=utf-8
"#############################################################################
"###                            UNITETUNES                                 ###
"#############################################################################
if exists('g:loaded_unitetunes')
  finish
elseif v:version < 703
  echoerr 'unitetunes.vim does not work on Vim "' . v:version . '".'
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

set encoding=utf-8
scriptencoding=utf-8

"=============================================================================
" UniteSettings
"=============================================================================

" Unite keymap
nmap <silent> su :UniteMenuToggle shortcut<CR>
nmap <silent> sU :Unite menu:shortcut<CR>

" Unite settings
let g:unite_force_overwrite_statusline=0
let g:unite_source_history_yank_enable=1

" Unite buffer keymap
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
	nmap <buffer> q :UniteMenuBack shortcut<CR>
	nmap <buffer> Q :UniteClose default<CR>
	nmap <buffer> <C-c> :UniteClose default<CR>
	"nmap <buffer> su <Nop>
	"nmap <buffer> sU <Nop>
	autocmd CursorMoved  <buffer> :call UniteCursorMoved()
	autocmd CursorMovedI <buffer> :call UniteCursorMoved()
	UniteMenuNestEcho
endfunction

" Unite cursor move. record line number for resume.
let s:unite_line = 0
function! UniteCursorMoved()
	let s:unite_line = line('.')
endfunction

" Unite menu:* nest show
let s:unite_stack = []
command! -nargs=0 UniteMenuNestEcho :call UniteMenuNestEcho()
function! UniteMenuNestEcho()
	let mesg = ''
	for i in s:unite_stack
		let mesg .= '/'. i[0]
	endfor
	let unite = unite#get_current_unite()
	if unite.args[0][0] == "menu"
		let mesg .= '/['. unite.args[0][1][0]. ']'
	else
		let mesg .= '/['. unite.profile_name. ']'
	endif
	redraw | echo mesg
endfunction

" Unite menu:* nest open
command! -nargs=+ UniteMenuNest :call UniteMenuNest(<f-args>)
function! UniteMenuNest(...)
	let unite = unite#get_current_unite()
	if unite != {} && unite.args[0][0] == "menu"
		let name = unite.args[0][1][0]
		let line = (s:unite_line >= 2)? s:unite_line - 2 : 0
		let item = [name, line]
		call add(s:unite_stack, item)
		exec "Unite ". join(a:000, " ")
	else
		echoerr "No Unite menu."
	endif
endfunction

" Unite menu:* back
command! -nargs=1 UniteMenuBack :call UniteMenuBack(<f-args>)
function! UniteMenuBack(root_menu_name)
	let unite = unite#get_current_unite()
	if unite != {} && unite.is_finalized == 0
		if unite.args[0][0] == "menu"
		 \ && unite.args[0][1][0] == a:root_menu_name
			UniteClose default
		elseif len(s:unite_stack) > 0
			let item = remove(s:unite_stack, -1)
			let name = item[0]
			let line = item[1]
			exec "Unite -silent -select=". line. " menu:". name
			" redraw cursor after 'Unite -select'
			let  unite = unite#get_current_unite()
			let  unite.cursor_line_time = [0, 0]
			call unite#set_current_unite(unite)
			call unite#force_redraw()
		else
			exec "Unite -silent menu:". a:root_menu_name
		endif
	endif
endfunction

" Unite menu:* toggle
command! -nargs=1 UniteMenuToggle :call UniteMenuToggle(<f-args>)
function! UniteMenuToggle(root_menu_name)
	let unite = unite#get_current_unite()
	if unite == {} || !exists("t:unite")
		exec "Unite -wrap -multi-line -silent menu:". a:root_menu_name
	elseif unite#get_unite_winnr(unite.buffer_name) < 0 "|| unite.is_finalized == 1
		UniteResume -silent
	else
		UniteClose default
	endif
endfunction

" Map Unite menu:*
function! UniteMap(key, value)
	let [word, value] = a:value
	if word == "---"
		" separator
		return {
		\    "word" : "-+----------------------------------------------------------------------------",
		\    "kind" : "command",
		\    "action__command" : ""
		\}
	elseif value == ""
		" title
		return {
		\    "word" : " | ". word,
		\    "kind" : "command",
		\    "action__command" : ""
		\}
	elseif isdirectory(value)
		" directory
		return {
		\    "word" : "/| ". word,
		\    "kind" : "directory",
		\    "action__directory" : value
		\}
	elseif !empty(glob(value))
		" file
		return {
		\    "word" : "e| ". word,
		\    "kind" : "file",
		\    "default_action" : "tabdrop",
		\    "action__path" : value,
		\}
	else
		" command
		return {
		\    "word" : ":| ". word,
		\    "kind" : "command",
		\    "action__command" : value
		\}
	endif
endfunction

"=============================================================================
" UniteMenu
"=============================================================================

" Initialize Unite menu:*
if !exists("g:unite_source_menu_menus")
	let g:unite_source_menu_menus = {}
endif

" Unite menu:shortcut
" let g:unite_source_menu_menus.shortcut = {
" \   "description" : "shortcut",
" \   "map"         : function("UniteMap"),
" \   "candidates"  : [
" \       ["[1sh]    Shell BufferDir",                                                  "OpenShell"],
" \       ["[2sh] VimFiler BufferDir",                                                  "VimFilerBufferDir"],
" \       ["[3sh]          Project",                                                    "call VimFiler(1)"],
" \       [" [1/]  VimGrep BufferDir",                                                  ""],
" \       [" [2/]          Project",                                                    ""],
" \       ["---",                                                                       ""],
" \       [" [;]  easy motion",                                                         ""],
" \       ["[s;] fuzzy motion",                                                         ""],
" \       ["[s/] fuzzy search",                                                         ""],
" \       ["---",                                                                       ""],
" \       ["[<C-s>.] tabmove left",                                                     "call vimtunes.tabmove(-1)"],
" \       ["[<C-s>,] tabmove right",                                                    "call vimtunes.tabmove(+1)"],
" \       ["[<C-s>0] tabmove 0",                                                        "tabmove 0"],
" \       ["[<C-s>$] tabmove 1000",                                                     "tabmove 1000"],
" \       ["[<C-s>o] tabonly",                                                          "call vimtunes.only(1)"],
" \       ["---",                                                                       ""],
" \       [" [^p] CtrlP",                                                               "CtrlP"],
" \       ["[1^p] CtrlP MRUFiles",                                                      "CtrlPMRUFiles"],
" \       ["[2^p] CtrlP Buffer",                                                        "CtrlPBuffer"],
" \       ["[3^p] CtrlP Line",                                                          "CtrlPLine"],
" \       ["[8^p] CtrlP VimDirectory",                                                  "call CtrlPCall(8)"],
" \       ["[9^p] CtrlP ClearCache",                                                    "CtrlPClearCache"],
" \       ["---",                                                                       ""],
" \       ["  [gd] YcmCompleter GotoDefinition",                                        "normal gd"],
" \       ["  [gI] YcmCompleter GotoImplementation",                                    "normal gI"],
" \       ["  [gr] OmniSharpFindUsages",                                                "normal gr"],
" \       ["   [K] OmniSharpDocumentation",                                             "normal K"],
" \       [" [s^p] OmniSharpFindType",                                                  "OmniSharpFindType"],
" \       [" [S^p] OmniSharpFindSymbol",                                                "OmniSharpFindSymbol"],
" \       [" [9gr] OmniSharpFindUsages With ReloadSolution",                            "normal 9gr"],
" \       ["  [9K] OmniSharpDocumentation With ReloadSolution",                         "normal 9K"],
" \       ["[9s^p] OmniSharpFindType With ReloadSolution",                              "normal 9s<C-p>"],
" \       ["[9S^p] OmniSharpFindSymbol With ReloadSolution",                            "normal 9S<C-p>"],
" \       ["---",                                                                       ""],
" \       ["[`<][`>] Goto last visual mode start/end position",                         ""],
" \       ["[`[][`]] Goto last yanked start/end position",                              ""],
" \       ["[g;][g,] next/prev changelist",                                             ""],
" \       ["---",                                                                       ""],
" \       ["[<C-r>.] Insert last inserted text",                                        ""],
" \       ["[<C-r>.] Insert last inserted text",                                        ""],
" \       ["[<C-r>/] Insert last searched text",                                        ""],
" \       ["[<C-r>%] Insert current filename text",                                     ""],
" \       ["---",                                                                       ""],
" \       ["[o]                   goto   Opponent selection position (in visual mode)", ""],
" \       ["[^h],[^j],[^k],[^l]   expand opponent selection / cursor (in visual mode)", ""],
" \       ["[^w],[^b]             expand opponent selection / word   (in visual mode)", ""],
" \       ["[+],[-]               expand opponent selection / block  (in visual mode)", ""],
" \       ["---",                                                                       ""],
" \       ["[<CR><delim>]         EasyAlign <delim>                  (in visual mode)", ""],
" \       ["[<CR>*<delim>]        EasyAlign All <delim>              (in visual mode)", ""],
" \       ["[<CR><right>*<delim>] EasyAlign to Right All <delim>     (in visual mode)", ""],
" \       ["---",                                                                       ""],
" \       ["[^o] prev jumplist",                                                        ""],
" \       ["[^g] next jumplist and output filename",                                    ""],
" \       ["[sc] toggle colorcolumn color",                                             "normal sc"],
" \       ["[sC] toggle colorcolumn width",                                             "normal sC"],
" \       ["---",                                                                       ""],
" \       ["[<op>av], [<op>iv] operate A/Inner Vertical word column",                   "normal vav"],
" \       ["[<op>ac], [<op>ic] operate A/Inner Comment",                                "normal vac"],
" \       ["[<op>a,], [<op>i,] operate A/Inner function argument (,)",                  "normal va,"],
" \       ["[<op>ap], [<op>ip] operate A/Inner Paragraph",                              "normal vap"],
" \       ["---",                                                                       ""],
" \       ["[^-^-] toggle comment",                                                     "TComment"],
" \       ["  [sr] toggle line",                                                        "normal sr"],
" \       ["  [st] toggle tabspace",                                                    "normal st"],
" \       ["  [sT] toggle tabchar",                                                     "normal sT"],
" \       ["  [qa] record  macro (@a), [q] to quit record",                             "normal qa"],
" \       ["  [@a] execute macro (@a)",                                                 "normal @a"],
" \       ["---",                                                                       ""],
" \       ["    [_] Switch Word",                                                       "Switch"],
" \       ["    [~] Toggle Case",                                                       "normal ~"],
" \       ["   [sr] QuickRun",                                                          "QuickRun"],
" \       ["   [so] only (make current window only)",                                   "only"],
" \       ["   [sg] OpenBrowserSmartSearch",                                            "call openbrowser#_keymapping_smart_search('n')"],
" \       ["[s<CR>] Autoformat",                                                        "Autoformat"],
" \       ["---",                                                                       ""],
" \       ["UltiSnips Edit   (edit snippets)",                                          "exec 'UltiSnipsEdit'"],
" \       ["          Update (NeoBundleUpdate vim-snippets-mine)",                      "NeoBundleUpdate vim-snippets-mine"],
" \       ["---",                                                                       ""],
" \       ["Ricty OpenFontDir",                                                         "RictyOpenFontDir"],
" \       ["      Use RictyDiminished",                                                 "RictyUse Ricty_Diminished:h18:cSHIFTJIS Ricty_Diminished:h24"],
" \       ["      Use Osaka",                                                           "RictyUse Osaka－等幅:h18:cSHIFTJIS Osaka-Mono:h24"],
" \       ["      Use Migu 1M",                                                         "RictyUse Migu\\ 1M\\ Regular:h18:cSHIFTJIS Migu\\ 1M\\ Regular:h26"],
" \       ["      Use Inconsolata",                                                     "RictyUse Inconsolata:h18:cSHIFTJIS Inconsolata:h26"],
" \       ["      Use Ubuntu Mono",                                                     "RictyUse Ubuntu\\ Mono:h18:cSHIFTJIS Ubuntu\\ Mono:h26"],
" \       ["      Unuse",                                                               "RictyUnuse"],
" \       ["---",                                                                       ""],
" \       ["NeoComplCache Enable  (enable  neocomplcache)",                             "NeoComplCacheUnlock | NeoComplCacheEnable"],
" \       ["              Disable (disable neocomplcache)",                             "NeoComplCacheDisable | NeoComplCacheLock "],
" \       ["---",                                                                       ""],
" \       ["VimShell",                                                                  "OpenVimShell"],
" \       ["Qfreplace",                                                                 "Qfreplace"],
" \       ["quickfix",                                                                  "UniteMenuNest quickfix"],
" \       ["quickrun (QuickRun)",                                                       "QuickRun"],
" \       ["Vinarise (Edit current file as binary file)",                               "Vinarise"],
" \       ["Format json (need pyhton)",                                                 "%!python -m json.tool"],
" \       ["git",                                                                       "UniteMenuNest menu:version_controls_git"],
" \       ["svn",                                                                       "UniteMenuNest menu:version_controls_svn"],
" \       ["---",                                                                       ""],
" \       ["file_mru",                                                                  "UniteMenuNest file_mru"],
" \       ["history/yank",                                                              "UniteMenuNest history/yank"],
" \       ["vimgrep",                                                                   "UniteMenuNest vimgrep"],
" \       ["line",                                                                      "UniteMenuNest -start-insert line"],
" \       ["source",                                                                    "UniteMenuNest source"],
" \       ["---",                                                                       ""],
" \       ["open .vimrc",                                                               $HOME. "/.vimrc"],
" \       ["NeoBundle List",                                                            "NeoBundleList"],
" \       ["          Install",                                                         "NeoBundleInstall"],
" \       ["          Clean",                                                           "NeoBundleClean"],
" \       ["          Update",                                                          "NeoBundleUpdate"],
" \   ],
" \}



let g:unite_source_menu_menus.shortcut = {
\   "description" : "shortcut",
\   "map"         : function("UniteMap"),
\   "candidates"  : [
\       ["VimShell",                                                      "VimShell"],
\       ["VimFiler BufferDir",                                                  "VimFilerBufferDir"],
\       ["---",                                                                       ""],
\       ["CtrlP",                                                               "CtrlP"],
\       ["CtrlP MRUFiles",                                                      "CtrlPMRUFiles"],
\       ["CtrlP Buffer",                                                        "CtrlPBuffer"],
\       ["CtrlP Line",                                                          "CtrlPLine"],
\       ["CtrlP VimDirectory",                                                  "CtrlPVimDirectory"],
\       ["CtrlP FileType",                                                      "CtrlPFiletype"],
\       ["CtrlP ClearCache",                                                    "CtrlPClearCache"],
\       ["---",                                                                       ""],
\       ["Autoformat",                                                        "Autoformat"],
\       ["---",                                                                       ""],
\       ["UltiSnips Edit   (edit snippets)",                                          "exec 'UltiSnipsEdit'"],
\       ["---",                                                                       ""],
\       ["git",                                                                       "UniteMenuNest menu:version_controls_git"],
\       ["svn",                                                                       "UniteMenuNest menu:version_controls_svn"],
\       ["---",                                                                       ""],
\       ["line",                                                                      "UniteMenuNest -start-insert line"],
\       ["file_mru",                                                                  "UniteMenuNest file_mru"],
\       ["vimgrep",                                                                   "UniteMenuNest vimgrep"],
\       ["source",                                                                    "UniteMenuNest source"],
\       ["---",                                                                       ""],
\       ["open .vimrc",                                                               $HOME. "/.vimrc"],
\       ["open Bundle",                                                               $HOME. "~/dotfiles.vim/bundles.vim"],
\       ["VimwikiIndex",                                                              "VimwikiIndex"],
\       ["Bundle List",																  "BundleList"],
\       ["          Install",                                                         "BundleInstall"],
\       ["          Clean",                                                           "BundleClean"],
\       ["          Update",                                                          "BundleUpdate"],
\   ],
\}



" PENDING
"["[<op>i|] operate Inner word column(|)", "normal vi|"],

" Unite menu:version_controls_git
let g:unite_source_menu_menus.version_controls_git = {
\   "description" : "version_controls_git",
\   "map"         : function("UniteMap"),
\   "candidates"  : [
\       ["git log",    "UniteMenuNest versions/git/log"],
\       ["    status", "UniteMenuNest versions/git/status"],
\   ],
\}

" Unite menu:version_controls_svn
let g:unite_source_menu_menus.version_controls_svn = {
\   "description" : "version_controls_svn",
\   "map"         : function("UniteMap"),
\   "candidates"  : [
\       ["svn diff",   "UniteMenuNest svn/diff"],
\       ["    blame",  "UniteMenuNest svn/blame"],
\       ["    status", "UniteMenuNest svn/status"],
\       ["    log",    "UniteMenuNest versions/svn/log"],
\   ],
\}

"BACKUP
"["register","UniteMenuNest register"],
"["outline","UniteMenuNest outline"],
"["options (only work-file on windows gvim)","Unite toggle-options"],
"["vimrc",$HOME."/.vimrc"],
"["options","Unite toggle-options"],
"["vimrc.registry",$HOME."/.vimrc.registry.".$VIM_PLATFORM],
"["neobundles",s:neobundle_root],
"["OpenUrl","OpenBrowser <url>"],
"" Unite menu:vimrc
"let g:unite_source_menu_menus.vimrc = {
"\   "description" : "vimrc",
"\   "map"         : function("UniteMap"),
"\   "candidates"  : [
"\       ["vimrc",          $HOME. "/.vimrc"],
"\       ["vimrc.registry", g:vimrc_registry],
"\   ],
"\}
"["NeoComplCacheUnlock  (enable neocomplcache)",  "NeoComplCacheUnlock"],
"["NeoComplCacheLock    (disable neocomplcache)", "NeoComplCacheLock"],
"["neobundle", "UniteMenuNest neobundle"],
"["vimrc", "UniteMenuNest menu:vimrc"],
"["[a/], [i/]  A/Inner last searched pattern", "normal a/"],
"["[axb],[ixb] A/Inner X Brackets", "normal axb"],

let g:loaded_unitetunes = 1
let &cpo = s:save_cpo
unlet s:save_cpo


nnoremap <silent> df :Unite line -prompt-direction="top" -auto-resize -auto-highlight -start-insert<CR>
nnoremap <silent> dc :CtrlPLine -prompt-direction="top" -auto-resize -auto-highlight -start-insert<CR>





















let g:vimfiler_as_default_explorer = 1


au BufWrite * :Autoformat
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0
autocmd FileType vim,tex let b:autoformat_autoindent=0
