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
Plug 'vim-syntastic/syntastic' " Syntax checking
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --rust-completer' }             " Omnicompletion
Plug 'ervandew/supertab'        " Tab for omnicompletion

Plug 'xolox/vim-misc'	      " Required for xolox plugins
Plug 'xolox/vim-notes'        " Notes plugin

Plug 'rust-lang/rust.vim'     " Rust Syntax, Compiler Checker, Etc.
Plug 'racer-rust/vim-racer'   " Rust Intellisense
Plug 'Chiel92/vim-autoformat'

" Plug 'jeffkreeftmeijer/vim-numbertoggle' " Smarter line numbering

Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
" Plug 'octol/vim-cpp-enhanced-highlight'

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
set softtabstop=4			" Set tab width to 4
set shiftwidth=4			" Set >> and << indenting to 4
set expandtab				" Convert tabs to spaces
set clipboard=unnamed                   " Use system clipbaord
set splitbelow                          " Splits open downward
set splitright                          " Or open rightward
set showtabline=0                       " Never display the tab bar
set shortmess+=A                        " Don't show "ATTENTION" messages for existing swap file
set completeopt=longest,menuone         " Select longest common text in Omnicompletion

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

" Allow split navigation from insert mode
imap <C-w>h <Esc><C-w>h
imap <C-w>j <Esc><C-w>j
imap <C-w>k <Esc><C-w>k
imap <C-w>l <Esc><C-w>l

" Allow <C-j> and <C-k> to be used to navigate Omnicompletion
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : '<C-j>'
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : '<C-k>'

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


command! -nargs=1 Silent
\   execute 'silent :r !' . <q-args>
\ | execute 'redraw!'
nnoremap <C-c> :r ! cargo fmt<CR>
inoremap <C-c> :r ! cargo fmt<CR>

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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++ -Wno-deprecated -I/usr/local/include -L/usr/local/lib'
let g:syntastic_c_compiler_options = '-I/usr/local/include -L/usr/local/lib -w'
let g:syntastic_error_symbol = "●"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_cpp_cpplint_exec = 'cpplint'
let g:syntastic_rust_checkers = ['rustc']

" vim-commentary
autocmd FileType c,cpp,cs,java setlocal commentstring=//\ %s

" YouCompleteMe
let g:ycm_rust_src_path = $RUST_SRC_PATH
let g:racer_cmd = "racer"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

