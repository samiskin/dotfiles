" To install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git
" ~/.vim/bundle/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'craigemery/vim-autotag'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ternjs/tern_for_vim'
Plugin 'terryma/vim-expand-region'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-foreplay'
Plugin 'Valloric/YouCompleteMe'

Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

Plugin 'kien/rainbow_parentheses.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'guns/vim-clojure-highlight'



call vundle#end()            " required
filetype plugin indent on    " required

" To install pathogen:
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
execute pathogen#infect()

syntax enable
set background=dark
colorscheme solarized
syntax on
set nowrap
set tabstop=2
set softtabstop=2
set shiftwidth=2
set showtabline=2
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
set smartcase

command Start !npm start

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
let g:EasyMotion_do_mapping = 0
nmap s <Plug>(easymotion-s)
let g:EasyMotion_smartcase = 1
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

" MacVim
set guioptions=gmL

" YouCompleteMe
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
highlight PMenu ctermfg=0 ctermbg=4 gui=bold guibg=Red
highlight PmenuSel ctermfg=8 ctermbg=12 gui=bold guibg=Red
let g:tern_show_argument_hints='on_hold'
let g:tern_show_signature_in_pum=1
nnoremap td :TernDef<CR>


" CTags
nnoremap <silent> <C-S-P> :CtrlPTag<cr>
nmap <silent> <C-b> <C-]>
nmap <silent> <C-S-b> :tn<cr>
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

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
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = '(.*)/node_modules/(.*)$'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_dont_split = 'nerdtree'
set wildignore+=*/node_modules/*
set modifiable
let NERDTreeQuitOnOpen=1


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
