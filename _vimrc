" vimrc
" Author: yanchao <yanchaozhang@gmail.com>
" Source: https://github.com/yanchaozhang/cfgFile
"
" no vi-compatible
set nocompatible              " Don't be compatible with vi
let mapleader=","             " change the leader to be a comma vs slash
filetype off

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Better file browser
Bundle 'scrooloose/nerdtree'
" Class/module browser
Bundle 'majutsushi/tagbar'

" Better editting
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'godlygeek/tabular'
Bundle 'matchit.zip'

" Code commenter
Bundle 'scrooloose/nerdcommenter'
" Consoles as buffers
Bundle 'rosenfeld/conque-term'
" solarized
Bundle 'altercation/vim-colors-solarized'
" Autoclose
Bundle 'Townk/vim-autoclose'

" Git integration
" Fugitive
Bundle 'tpope/vim-fugitive'

" Search tool
Bundle 'mileszs/ack.vim'

" Python suite
Bundle 'Python-Syntax'
Bundle 'Python-mode'
Bundle 'pep8'
Bundle 'pyflakes.vim'

" Python configuration
" pep8
let g:pep8_map='<leader>8'

set foldmethod=indent
set foldlevel=2
set foldnestmax=4



" Installing plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

" allow plugins by file type
syntax on
filetype plugin on
filetype indent on

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tablength exceptions
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" always show status bar
set ls=2

" incremental search
set incsearch

" highlighted search results
set hlsearch

" line numbers
set nu

" NERDTree (better file browser) toggle
map <F3> :NERDTreeToggle<CR>
" toggle Tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on Tagbar open
let g:tagbar_autofocus = 1
" Ack searching
nmap <leader>a <Esc>:Ack!

" tab navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew 

" quickfix navigation
nmap qn :cn<CR>
nmap qp :cp<CR>

" navigate windows with meta+arrows
map <M-Right> <c-w>l
map <M-Left> <c-w>h
map <M-Up> <c-w>k
map <M-Down> <c-w>j
imap <M-Right> <ESC><c-w>l
imap <M-Left> <ESC><c-w>h
imap <M-Up> <ESC><c-w>k
imap <M-Down> <ESC><c-w>j

" automatically close autocompletion window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" old autocomplete keyboard shortcut
imap <C-J> <C-X><C-O>

" show pending tasks list
map <F2> :TaskList<CR>

" save as sudo
ca w!! w !sudo tee "%"

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" colorscheme
set background=dark
set cursorline
set t_Co=256

let g:solarized_termcolors=16
set background=dark
