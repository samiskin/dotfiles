" Most critical
inoremap jk <Esc>

" ------------------------------------------------------
"            		 Plugins
"  ----------------------------------------------------
filetype plugin on                      " Some plugins break without this

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'  	" Sensible defaults
Plug 'tpope/vim-commentary' 	" Comments
Plug 'tpope/vim-surround' 	" Surround text with quotes using s
Plug 'tpope/vim-fugitive' 	" Git support
Plug 'raimondi/delimitMate'             " Autocreates parentheses

Plug 'scrooloose/nerdtree'    " Project folder browser
Plug 'rking/ag.vim'           " Fuzzy Text Grepper
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Fuzzy File Finder
" Plug 'vim-syntastic/syntastic' " Syntax checking
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer' }             " Omnicompletion
Plug 'ervandew/supertab'        " Tab for omnicompletion
Plug 'AndrewRadev/sideways.vim' " Move terms sideways

Plug 'xolox/vim-misc'	      " Required for xolox plugins
Plug 'xolox/vim-notes'        " Notes plugin

Plug 'rust-lang/rust.vim'     " Rust Syntax, Compiler Checker, Etc.
Plug 'racer-rust/vim-racer'   " Rust Intellisense
Plug 'Chiel92/vim-autoformat'
Plug 'metakirby5/codi.vim'    " Live scratchpad

" Plug 'jeffkreeftmeijer/vim-numbertoggle' " Smarter line numbering


Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'
Plug 'HerringtonDarkholme/yats.vim'
" Plug 'Quramy/vim-js-pretty-template'
Plug 'jason0x43/vim-js-indent'
" Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'mustache/vim-mustache-handlebars'

Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'
Plug 'heavenshell/vim-tslint'



Plug 'sonph/onehalf', {'rtp': 'vim/'}

call plug#end()

" ------------------------------------------------------
"            		 Config
"  ----------------------------------------------------

" ---------------------
"        General
" ---------------------

set mouse=a                             " Allow Mouse Selection
set number				" Display line numbers
" set relativenumber 			" Line numbers are listed relative to cursor
set nowrap 				" Don't wrap text
set tw=80 				" Max text width
set softtabstop=2			" Set tab width to 4
set shiftwidth=2			" Set >> and << indenting to 4
set tabstop=2
set expandtab				" Convert tabs to spaces
set clipboard=unnamed                   " Use system clipbaord
set splitbelow                          " Splits open downward
set splitright                          " Or open rightward
set showtabline=0                       " Never display the tab bar
set shortmess+=A                        " Don't show "ATTENTION" messages for existing swap file
set completeopt=longest,menuone         " Select longest common text in Omnicompletion
set encoding=utf-8

" http://www.johnhawthorn.com/2012/09/vi-escape-delays/
set notimeout
set timeoutlen=10
set ttimeoutlen=0

" Searching
set ignorecase				" Ignore case when searching
set smartcase				" Unless there are capitals
set hlsearch				" Highlight search matches
set incsearch				" Searches as you type

" Disable auto-commenting when pressing Enter in a comment block
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Use tabs in Makefiles
autocmd FileType make setlocal noexpandtab

" Saves undoes for each file even if they are closed
set undofile
set undodir=~/.vim/undodir

set backupdir=/tmp/
set directory=/tmp/

" ---------------------
"     Keybindings
" ---------------------

" Allow for mistakes in save/quitting
map :W :w
map :Q :q
map :Q <Nop> " Enters ex mode otherwise

" Allow for normal movement 
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

" Allow split navigation from insert mode
imap <C-w>h <Esc><C-w>h
imap <C-w>j <Esc><C-w>j
imap <C-w>k <Esc><C-w>k
imap <C-w>l <Esc><C-w>l

" Make Ctrl-t act as "Swap letters"
nnoremap <C-t> Xp

" When jump to next match also center screen
" Note: Use :norm! to make it count as one command. (i.e. for i_CTRL-o)
nnoremap <silent> n :norm! nzz<CR>
nnoremap <silent> N :norm! Nzz<CR>
vnoremap <silent> n :norm! nzz<CR>
vnoremap <silent> N :norm! Nzz<CR>

" This allows pasting over other text without overriting register
" Note: This breaks pasting from other registers
xnoremap p "_dP"

" Don't cancel visual select when shifting
xnoremap <  <gv
xnoremap >  >gv

" Remap jump to definition for tags
nnoremap gD <c-]>
vnoremap gD <c-]>

" Disable upper/lower casing
vmap u <Nop>
vmap U <Nop>


command! -nargs=1 Silent
\   execute 'silent :r !' . <q-args>
\ | execute 'redraw!'
" nnoremap <C-c> :r ! cargo fmt<CR>
" inoremap <C-c> :r ! cargo fmt<CR>

" ---------------------
"        Visual
" ---------------------

" Remove characters in vertical split separator
set laststatus=2                            " Always show status bar
set statusline=%=%f\ %m\ \[%c\,%l\]         " filename [changed] [col, line]
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,
set noshowmode                              " Hide "-INSERT-" like status

"source ~/Code/dotfiles/solarized-edited.vim
source ~/.vimrc.colors

" ---------------------
" 	  Plugins
" ---------------------

" Fzf
nnoremap <C-p> :FZF -m<CR>
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tab split'
      \ }

" NERDTree
map <C-w>t :NERDTreeToggle<CR>
imap <C-w>t <Esc>:NERDTreeToggle<CR>
let NERDTreeShowHidden=1                " Show dotfiles

" Ale
" let g:ale_linters = {'rust': ['cargo']}
" let g:ale_fix_on_save = 1

" " Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 2
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++ -Wno-deprecated -I/usr/local/include -L/usr/local/lib'
" let g:syntastic_c_compiler_options = '-I/usr/local/include -L/usr/local/lib -w'
" let g:syntastic_error_symbol = "●"
" let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_cpp_cpplint_exec = 'cpplint'
" let g:syntastic_rust_checkers = ['rustc']

" vim-notes
let g:notes_directories = ["~/Personal"]
let g:notes_smart_quotes = 1
let g:notes_suffix = '.txt'

" vim-commentary
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" YouCompleteMe
let g:ycm_rust_src_path = $RUST_SRC_PATH
let g:racer_cmd = "~/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

let g:ycm_error_symbol = "●"
let g:ycm_warning_symbol = "⚠"
let g:ycm_always_populate_location_list = 0
let g:ycm_open_loclist_on_ycm_diags = 0

let g:ycm_typescript_checkers = ['tsuquyomi', 'tslint']
let g:ycm_javascript_checkers = ['eslint']
let g:ycm_rust_checkers = ['cargo']

let g:racer_experimental_completer = 1


let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,cuda,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'rust' : ['.', '::'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ycm_filetype_blacklist = {
      \ 'tagbar': 1,
      \ 'notes': 1,
      \ 'markdown': 1,
      \ 'netrw': 1,
      \ 'unite': 1,
      \ 'text': 1,
      \ 'vimwiki': 1,
      \ 'pandoc': 1,
      \ 'infolog': 1,
      \ 'leaderf': 1,
      \ 'qf': 1,
      \ 'php': 1,
      \ 'mail': 1
      \}
let g:ycm_filetype_specific_completion_to_disable = {
  \ 'qf': 1
  \}
" Tsuquyomi
let g:tsuquyomi_disable_default_mappings=1
let g:tsuquyomi_disable_quickfix=1
nmap gD :YcmCompleter GoToDefinition<CR>
" nmap gD :TsuquyomiDefinition<CR>
" nmap dg :TsuGoBack<CR>
autocmd FileType typescript nmap <buffer> <Leader>t : <C-u>echo tsuquyomi#hint()<CR>
" autocmd FileType typescript nmap gD :TsuquyomiDefinition<CR> 
" autocmd FileType typescript nmap dg :TsuGoBack<CR> 

nnoremap <C-m> : <C-u>YcmCompleter GetType<CR>
nnoremap <C-r>t : <C-u>RustTest<CR>
nnoremap <C-r>f : <C-u>RustFmt<CR>
nnoremap <C-e>f :YcmCompleter FixIt<CR>
nnoremap mm :update<cr>



" sideways
nnoremap H :SidewaysLeft<cr>
nnoremap L :SidewaysRight<cr>




