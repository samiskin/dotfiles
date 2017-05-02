" Most critical
inoremap jk <Esc>

" ------------------------------------------------------
"            		 Plugins
"  ----------------------------------------------------
filetype plugin on                      " Some plugins break without this

call plug#begin('~/.vim/plugged')

" Experimental
Plug 'xolox/vim-notes'		        " Notes plugin
Plug 'xolox/vim-misc'		        " Required for xolox plugins

" General
" Plug 'terryma/vim-multiple-cursors'     " Allows multiple separate cursors
" Plug 'junegunn/vim-easy-align'          " Alignment for <Space> = : . | & # and ,
Plug 'junegunn/rainbow_parentheses.vim' " Parentheses changa color, where matching parentheses have the same color
Plug 'raimondi/delimitMate'             " Autocreates parentheses
Plug 'rking/ag.vim'                     " Run :Ag to run silver searcher
Plug 'scrooloose/nerdtree'              " File navigation sidebar
" Plug 'itchyny/lightline.vim'            " Lightweight status line
Plug 'simnalamburt/vim-mundo'           " Display history as a tree
Plug 'neomake/neomake'                  " Used for syntax checking
Plug 'tpope/vim-commentary'             " Gcc to comment
Plug 'tpope/vim-fugitive'               " Git commands
Plug 'tpope/vim-surround'               " Surround text
Plug 'tpope/vim-sensible'               " Sensible defaults
Plug 'tpope/vim-sleuth'                 " Autodetect tab settings
" Plug 'carlitux/deoplete-ternjs'         " Javascript autocompletion for deoplete
" Plug 'steelsojka/deoplete-flow'         " Flow autocompletion for deoplete
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }	" File fuzzy finder
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}             " Lightweight async autocompletion
Plug 'Shougo/vimproc.vim', {'do' : 'make'}                              " Async execution, used by ghcmod
Plug 'eagletmt/ghcmod-vim'            " Haskell compilation
Plug 'eagletmt/neco-ghc'              " Haskell autocompletion
Plug 'ervandew/supertab'              " Better tab completion
Plug 'racer-rust/vim-racer'

" Colors / Syntax
Plug 'altercation/vim-colors-solarized'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'lilydjwg/colorizer', { 'for': ['css', 'sass', 'scss', 'less', 'html', 'xdefaults', 'javascript', 'javascript.jsx'] }
Plug 'keith/tmux.vim'
Plug 'honza/dockerfile.vim'
Plug 'tpope/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'rust-lang/rust.vim'

cal plug#end()


" ------------------------------------------------------
"            		 Config
"  ----------------------------------------------------

" ---------------------
"        General
" ---------------------

set number				" Display line numbers
set relativenumber 			" Line numbers are listed relative to cursor
set nowrap 				" Don't wrap text
set tw=80 				" Max text width
set softtabstop=4			" Set tab width to 4
set shiftwidth=4			" Set >> and << indenting to 4
set expandtab				" Convert tabs to spaces
set clipboard+=unnamedplus              " Use system clipbaord
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
set incsearch				" Incrementally searches as you type

" Disable auto-commenting when pressing Enter in a comment block
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Makefiles
autocmd FileType make setlocal noexpandtab

" Disable line for vertical splits
hi VertSplit ctermbg=NONE guibg=NONE

" ---------------------
"     Keybindings
" ---------------------

" Allow for mistakes in save/quitting
map :W :w
map :Q :q

nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
inoremap <C-j> :bn<CR>
inoremap <C-k> :bp<CR>


" Allow navigation from insert mode
imap <C-w>h <Esc><C-w>h
imap <C-w>j <Esc><C-w>j
imap <C-w>k <Esc><C-w>k
imap <C-w>l <Esc><C-w>l

" Make Ctrl-t act as "Swap letters"
nnoremap <C-t> Xp

" Ctrl-f to toggle folding
nnoremap <C-f> za

" Quick replay 'q' macro
nnoremap Q @q

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

" Terminal mode mappings
if has('nvim')
  tnoremap <ESC> <C-\><C-n>
  tnoremap ,<ESC> <ESC>
  tnoremap <C-w>h <C-\><C-n><C-w>h
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>l <C-\><C-n><C-w>l
endif


" ---------------------
"         Color
" ---------------------

syntax enable
set background=dark
colorscheme solarized

hi LineNr ctermfg=237
" Disable the thick vertical split bar
hi VertSplit ctermbg=NONE guibg=NONE
hi StatusLine ctermfg=Black ctermbg=245
hi StatusLineNC ctermfg=Black ctermbg=237
hi NonText ctermfg=237
set fillchars=vert:\ ,stl:\ ,stlnc:\ 
" hi Search ctermbg=58 ctermfg=15
" hi Default ctermfg=1
" hi clear SignColumn
" hi SignColumn ctermbg=235
" hi GitGutterAdd ctermbg=235 ctermfg=245
" hi GitGutterChange ctermbg=235 ctermfg=245
" hi GitGutterDelete ctermbg=235 ctermfg=245
" hi GitGutterChangeDelete ctermbg=235 ctermfg=245
" hi EndOfBuffer ctermfg=237 ctermbg=235

set laststatus=2
set noshowmode " Hide second status"
set statusline=%=%f\ %m\ \[%c\,%l\]

hi Normal ctermbg=black

" hi TabLineFill ctermfg=Black ctermbg=Black
" hi TabLine ctermfg=Black ctermbg=Black
" hi TabLineSel ctermfg=Black ctermbg=Black
" set tabline=none

" Show trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Highlight VCS conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Remove underline in folded lines
hi! Folded term=NONE cterm=NONE gui=NONE ctermbg=NONE

" Typescript syntax
au BufNewFile,BufRead *.ts set syntax=javascript.jsx
au BufNewFile,BufRead *.tsx set syntax=javascript.jsx

" ---------------------
" 	Lightline
" ---------------------
let g:lightline = {
\  'active': {
\    'left': [['mode', 'paste'],
\             ['filename', 'relativepath', 'modified']],
\    'right': [['lineinfo'],
\              ['percent'],
\              ['fileformat', 'fileencoding', 'filetype']]
\  }
\ }

" ---------------------
" 	  Mundo
" ---------------------
nnoremap <F5> :MundoToggle<CR>

" Saves undoes for each file even if they are closed
set undofile
set undodir=~/.config/nvim/undo

" ---------------------
" 	  Fzf
" ---------------------
nnoremap <C-p> :FZF -m<CR>
let g:fzf_action = {
      \ 'ctrl-s': 'split',
      \ 'ctrl-v': 'vsplit',
      \ 'ctrl-t': 'tab split'
      \ }


" ---------------------
"      Neomake
" ---------------------
let g:neomake_javascript_eslint_exe = $PWD .'/node_modules/.bin/eslint'
let g:neomake_javascript_enabled_makers = ['eslint', 'flow']    " Make javascript use eslint
nnoremap <C-w>e :Neomake!<CR>
autocmd! BufWritePost * Neomake                         " Autorun on every write
hi SignColumn ctermbg=none                              " Make the vertical error bar invisible

" ---------------------
"        NERDTree
" ---------------------
map <C-w>t :NERDTreeToggle<CR>
imap <C-w>t <Esc>:NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " Show dotfiles


" ---------------------
"    YouCompleteMe
" ---------------------

" Causes the bar to be dark grey background with blue foreground
highlight PMenu ctermfg=0 ctermbg=4 gui=bold guibg=Red
highlight PmenuSel ctermfg=8 ctermbg=12 gui=bold guibg=Red

" Allow <C-j> and <C-k> to be used to navigate options
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : '<C-j>'
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : '<C-k>'


" ---------------------
"       Deoplete
" ---------------------

let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout=1
let g:tern_show_signature_in_pum=1
set completeopt-=preview                    " Don't show preview scratch buffers
"let g:deoplete#sources={}
"let g:deoplete#sources['javascript.jsx'] = ['buffer', 'file', 'ternjs', 'flow']

" Enable tab completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


" ---------------------
"       easy-align
" ---------------------

" 2=  means around 2nd occurence of =
" *=  means around all occurences of =
" **= means left/right alternating alignment around all occurences
" <Enter> switches between left/right/center alignment

" These two are needed to allow interactive EasyAlign in
" visual mode, then normal mode after the visual selection goes away
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)


" ---------------------
"       vim-notes
" ---------------------

" :Note <note name> to open note
" :DeleteNote to delete the
" :SearchNotes <keyword> to search for keywords, /pattern/ searches for regex
"     - If cursor is over a word and keyword is blank, will search for that word
"     - If the word is preceded by @, it will be included, so @ can be used for tags
" {{{javascript ... }}} to have higlighted blocks

let g:notes_directories = ['~/Dropbox/Notes']
let g:notes_suffix = '.md'
highlight link notesName Normal


" ---------------------
"  rainbow-parentheses
" ---------------------
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END


" ---------------------
"  vim-markdown
" ---------------------
let g:vim_markdown_no_default_key_mappings=1
let g:vim_markdown_folding_disabled=1
let g:markdown_fenced_languages=[
      \'bash=sh',
      \'git=gitconfig',
      \'javascript',
      \'lua',
      \'ruby',
      \'tmux',
      \'viml=vim',
      \'xdefaults',
      \'zsh']

" ---------------------
"    vim-javascript
" ---------------------
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_flow=1



" ---------------------
"       Haskell
" ---------------------
" From http://www.stephendiehl.com/posts/vim_2016.html
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tt :GhcModType<CR>
map <silent> tr :GhcModTypeClear<CR>


let g:SuperTabDefaultCompletionType = '<c-x><c-o>'
if has("gui_running")
  imap <c-space> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
else " no gui
  if has("unix")
    inoremap <Nul> <c-r>=SuperTabAlternateCompletion("\<lt>c-x>\<lt>c-o>")<cr>
  endif
endif

let g:ycm_semantic_triggers = {'haskell' : ['.']}
