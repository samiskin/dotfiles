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

Plug 'scrooloose/nerdtree'    " Project folder browser
Plug 'rking/ag.vim'           " Fuzzy Text Grepper
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Fuzzy File Finder

Plug 'xolox/vim-misc'	      " Required for xolox plugins
Plug 'xolox/vim-notes'        " Notes plugin

Plug 'rust-lang/rust.vim'     " Rust Syntax, Compiler Checker, Etc.
Plug 'racer-rust/vim-racer'   " Rust Intellisense

Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'

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
