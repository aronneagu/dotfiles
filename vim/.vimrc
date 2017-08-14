let vundleInstalled=0
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    silent !mkdir -p ~/.vim/bundle/
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let vundleInstalled=1
endif
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
Plugin 'voxpupuli/vim-puppet'
Plugin 'dhruvasagar/vim-table-mode'
if vundleInstalled == 1
    :PluginInstall
endif
filetype plugin indent on
nmap <silent> <F3> :NERDTreeToggle  <CR>
"let g:nerdtree_tabs_open_on_console_startup=0
let g:ctrlp_show_hidden=1
let NERDTreeShowHidden=1
syntax enable
colorscheme elflord

set cindent
set hidden          " keeps current buffers hidden and doesnt close them
set tabstop=4       " a tab is four spaces
set shiftwidth=4    " number of spaces for autoindenting
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3     " number of lines to keep above or below cursor
set autoindent      " always set autoindenting on
set showmode
set showcmd
set wildmenu
set wildmode=full
set showmatch       " set show matching parantheses
set ignorecase      " ignore case when seaeching
set smartcase       " ignore case if search partern is lower case 
                    " otherwise its case sensitive
set hlsearch        " highlight search terms
set incsearch       " show search matches as you type
set number          " show line number 

let mapleader = " "
nmap <silent> <leader>ev :e $MYVIMRC<CR>                      " edit vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>                     " source vimrc
nmap <silent> <leader>eb :e ~/.bashrc<CR>                     " edit bashrc
nmap <silent> <leader>sb :! source ~/.bashrc<CR>              " source bashrc
nmap <silent> <leader>ez :e ~/.zshrc<CR>                      " edit zshrc
nmap <silent> <leader>et :e ~/.tmux.conf<CR>                  " edit tmux
nmap <silent> <leader>st :!tmux source-file ~/.tmux.conf<CR>  " source tmux
nnoremap ; :
inoremap jj <ESC>
nmap <silent> // :nohlsearch<CR>
map <F2> :<up><CR>
map <C-v> :shell<CR>
nmap <F8> :TagbarToggle<CR>

" Tagbar plugin options
"let g:tagbar_autoclose=1
let g:tagbar_autofocus=1
let g:tagbar_compact=1
" autocmd FileType * nested :call tagbar#autoopen(0)

" vim-auto-save plugion options
let g:auto_save=1


" CtrlP plugin options
let g:ctrlp_use_caching=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_cache_dir='$HOME/.cache/ctrlp'
let g:ctrlp_tabpage_position='ac'
let g:ctrlp_working_path_mode='r'

" Ack plugin options
let g:ack_default_options=" --sort-files -H --nocolor --nogroup --column "
let g:ackpreview=1
let g:ack_autoclose=1

set makeprg=gcc\ -o\ %<\ %
nnoremap <F7> :CtrlPTag<CR>
nmap <F7> :cprev<CR>
nmap <F8> :cnext<CR>
nmap <F9> :w <bar> silent make<CR><C-l> <bar> :! clear && ./%:r<CR>
inoremap <c-]> <c-x><c-]>

set statusline=Line:\ %l/%L\ %3p%%%=%F
set laststatus=2

autocmd BufEnter *.c colorscheme borland
autocmd BufWinLeave *.c colorscheme default
" show the quickfix window if compilation failed
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" https://evertpot.com/osx-tmux-vim-copy-paste-clipboard/
set clipboard=unnamed 
