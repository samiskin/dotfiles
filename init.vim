inoremap jk <Esc>


call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': { -> coc#util#install()}}
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-commentary' 	" Comments
Plug 'tpope/vim-surround' 	" Surround
Plug 'tpope/vim-fugitive' 	" Git support

Plug 'rking/ag.vim'           " Fuzzy Text Grepper
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " Fuzzy File Finder

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

Plug 'rust-lang/rust.vim'     " Rust Syntax, Compiler Checker, Etc.

Plug 'xolox/vim-misc'	      " Required for xolox plugins
Plug 'xolox/vim-notes'        " Notes plugin

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()

" ------------------------------------------------------
"            		 Config
"  ----------------------------------------------------

" ---------------------
" 	  Plugins
" ---------------------

let g:NERDTreeGitStatusWithFlags = 1

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

" vim-notes
let g:notes_directories = ["~/Personal"]
let g:notes_smart_quotes = 1
let g:notes_suffix = '.txt'

" Coc
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-tslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ ]
  " \ 'coc-eslint',
set hidden " Some servers have issues with backup files, see #649
" set nobackup
" set nowritebackup " Better display for messages 
" set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
set shortmess+=c " don't give |ins-completion-menu| messages.
" set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gD <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <C-e>r <Plug>(coc-rename)

" Remap for format selected region
xmap <C-e>f  <Plug>(coc-format-selected)
nmap <C-e>f  <Plug>(coc-format-selected)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Set up Prettier command
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-e>d <Plug>(coc-range-select)
xmap <silent> <C-e>d <Plug>(coc-range-select)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
function! StatusDiagnostic() abort
  let info = get(b:, 'coc_diagnostic_info', {})
  if empty(info) | return '' | endif
  let msgs = []
  if get(info, 'error', 0)
    call add(msgs, 'E' . info['error'])
  endif
  if get(info, 'warning', 0)
    call add(msgs, 'W' . info['warning'])
  endif
  return join(msgs, ' '). ' ' . get(g:, 'coc_status', '')
endfunction

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
set statusline=%{StatusDiagnostic()}%{get(b:,'coc_current_function','')}

" Rust
nnoremap <C-r>t : <C-u>RustTest<CR>
nnoremap <C-r>f : <C-u>RustFmt<CR>



" ---------------------
"        General
" ---------------------

set mouse=r                             " Allow Mouse Selection
set number				" Display line numbers
set relativenumber 			" Line numbers are listed relative to cursor
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
nnoremap :W :w
nnoremap :Q :q
nnoremap Q <Nop>

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

" Disable upper/lower casing
vmap u <Nop>
vmap U <Nop>

command! -nargs=1 Silent
\   execute 'silent :r !' . <q-args>
\ | execute 'redraw!'

" ---------------------
"        Visual
" ---------------------

" Remove characters in vertical split separator
set laststatus=2                            " Always show status bar
set statusline+=%=%f\ %m\ \[%c\,%l\]         " filename [changed] [col, line]
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,
set noshowmode                              " Hide "-INSERT-" like status
set guicursor=                              " Use the default cursor in neovim


source ~/.vimrc.colors

" Handle JSON with comments
autocmd FileType json syntax match Comment +\/\/.\+$+
