" To install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git
" ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Run :PluginInstall
Plugin 'VundleVim/Vundle.vim'
Plugin 'raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'justinmk/vim-sneak'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible' " Sensible defaults
Plugin 'tpope/vim-surround' " Surround text with quotes
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'vim-scripts/JavaScript-Libraries-Syntax'
Plugin 'keith/tmux.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mhartington/vim-typings'
Plugin 'hdima/python-syntax'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'flowtype/vim-flow'
Plugin 'ternjs/tern_for_vim'
Plugin 'godlygeek/tabular'

" Plugin 'Shougo/vimproc.vim'
" Plugin 'craigemery/vim-autotag'
" Plugin 'terryma/vim-expand-region'
" Plugin 'drmingdrmer/vim-syntax-markdown'
" Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'guns/vim-clojure-static'
" Plugin 'guns/vim-clojure-highlight'
" Plugin 'Shougo/unite.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Run :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all' }
call plug#end()

" Make fzf use git repository
function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()


syntax enable
set background=dark
colorscheme solarized
syntax on
set nowrap

set noexpandtab " Make sure that every file uses real tabs, not spaces
set shiftround  " Round indent to multiple of 'shiftwidth'
set smartindent " Do smart indenting when starting a new line
set autoindent  " Copy indent from current line, over to the new line

set omnifunc=syntaxcomplete#Complete


set expandtab
set hidden
set hls
set ruler
set backspace=indent,eol,start
set splitright
set autoread
set modifiable
set clipboard=unnamed
set exrc
set secure
set showmatch
set noeb
set vb
set relativenumber
set number
set ignorecase
set smartcase
set scrolloff=2

if has('mouse_sgr')
  set ttymouse=sgr
endif



" Disable comments
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

imap jk <Esc>
map :W :w
map :Q :q
imap <C-p> <Esc><C-p>

imap <C-w>h <Esc><C-w>h
imap <C-w>j <Esc><C-w>j
imap <C-w>k <Esc><C-w>k
imap <C-w>l <Esc><C-w>l

map <C-w>t :NERDTreeToggle<CR>
imap <C-w>t <Esc>:NERDTreeToggle<CR>

nnoremap <C-t> Xp

nnoremap <C-j> :m .+1<CR>==
inoremap <C-j> <Esc>:m .+1<CR>==gi
nnoremap <C-k> :m .-2<CR>==
inoremap <C-k> <Esc>:m .-2<CR>==gi
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" This allows pasting over other text without overriting register
" Note: This brekas pasting from other registers but I don't really do that
xnoremap p "_dP"

" Crontab
autocmd filetype crontab setlocal nobackup nowritebackup

" easymotion
" let g:EasyMotion_do_mapping = 0
" nmap s <Plug>(easymotion-s)
" let g:EasyMotion_smartcase = 1
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)

" vim-sneak
let g:sneak#use_ic_scs = 1
let g:sneak#s_next = 1
let g:sneak#absolute_dir = 1
" let g:sneak#streak = 1
" hi link SneakStreakTarget ErrorMsg
" hi link SneakPluginScope DiffChange
hi link SneakPluginTarget pandocDefinitionTerm


let g:flow#autoclose = 1

" MacVim
set guioptions=gmL

" YouCompleteMe
nnoremap <C-w>d :YcmCompleter GoToDefinition<CR>
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
highlight PMenu ctermfg=0 ctermbg=4 gui=bold guibg=Red
highlight PmenuSel ctermfg=8 ctermbg=12 gui=bold guibg=Red
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1
nnoremap td :TernDef<CR>

" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : '<C-j>'
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : '<C-k>'

" Vim bookmarks
let g:bookmark_auto_save = 1
let g:bookmark_center = 1


" CTags
nnoremap <silent> <C-S-P> :CtrlPTag<cr>
nmap <silent> <C-b> <C-]>
nmap <silent> <C-S-b> :tn<cr>
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

let g:syntastic_typescript_checkers = ['tsc']
" let g:syntastic_typescript_tslint_args= '--jsx'
let g:syntastic_typescript_tsc_args= '--jsx'
" let g:syntastic_quiet_messages = {
"   \ "!level": "errors",
"   \ "type": "syntax",
"   \ "regex": '*Cannot find module*',
"   \ "file:p": ['*.tsx', '*.ts'] }

" au BufNewFile,BufRead *.ts set syntax=javascript.jsx
" au BufNewFile,BufRead *.tsx set syntax=javascript.jsx

function! DelTagOfFile(file)
  let fullpath = a:file
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let f = substitute(fullpath, cwd . "/", "", "")
  let f = escape(f, './')
  let cmd = 'sed -i "/' . f . '/d" "' . tagfilename . '"'
  let resp = system(cmd)
endfunction

function! UpdateTags()
  let f = expand("%:p")
  let cwd = getcwd()
  let tagfilename = cwd . "/tags"
  let cmd = 'ctags -a -f ' . tagfilename . ' --c++-kinds=+p --fields=+iaS --extra=+q ' . '"' . f . '"'
  call DelTagOfFile(f)
  let resp = system(cmd)
endfunction
autocmd BufWritePost *.cpp,*.h,*.c call UpdateTags()

" search highlighting
set hlsearch
set mouse=a

" Show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

syn match tab display "\t"
hi link tab Error

"vim-expand-region
vmap v <Plug>(expand_region_expand)


" Ctrl P
" set runtimepath^=~/.vim/bundle/ctrlp.vim
" let g:ctrlp_custom_ignore = '(.*)/node_modules/(.*)$'
" let g:ctrlp_working_path_mode = ""
" let g:ctrlp_dont_split = 'nerdtree'
" set wildignore+=*/node_modules/*
" set modifiable
" let NERDTreeQuitOnOpen=1
" let g:ctrlp_max_files=0
" let g:ctrlp_max_depth=40


" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint'] " Issue here is that it lags

nnoremap <C-w>e :SyntasticCheck<CR>
nnoremap <C-w><C-e> :SyntasticToggleMode<CR>

" Dislpays the syntax group at cursor position
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>



hi VertSplit ctermbg=NONE guibg=NONE


set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

set laststatus=1
set rtp+=~/.fzf

" FZF
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tab split'
      \ }
nnoremap <C-p> :FZF -m<CR>


" Set the tab width
let s:tabwidth=2
exec 'set tabstop='    .s:tabwidth
exec 'set shiftwidth=' .s:tabwidth
exec 'set softtabstop='.s:tabwidth
exec 'set showtabline='.s:tabwidth

