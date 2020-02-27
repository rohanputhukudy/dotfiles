" For Vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Put in all Plugins here
" Plugin 'Valloric/YouCompleteMe'
Plugin 'artur-shaik/vim-javacomplete2'
" autocmd FileType java setlocal omnifunc=javacomplete#Complete
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
" Plugin 'lervag/vimtex'
" ':Goyo' toggles distraction free mode
Plugin 'junegunn/goyo.vim'
" Git wrapper for vim
Plugin 'tpope/vim-fugitive'
" Enables keystrokes for surrounding characters like '(' and '['
Plugin 'tpope/vim-surround'
" Enables syntax highlighting for TypeScript
Plugin 'leafgarland/typescript-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" Auto closes scratch window in YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

set laststatus=2

syntax enable
set number
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=0 noexpandtab

au BufRead,BufNewFile *.js set tabstop=2
au BufRead,BufNewFile *.js set shiftwidth=2

" Highlights all search matches
set hlsearch

inoremap jk <esc> 
inoremap JK <esc>

map <C-n> :NERDTreeToggle<CR>

" Changes the split navigations
nnoremap <C-j> <C-W><C-J>
nnoremap <C-k> <C-W><C-K>
nnoremap <C-h> <C-W><C-H>
nnoremap <C-l> <C-W><C-L>

" Defaults splitscreen to bottom right
set splitbelow
set splitright

" Turns on spell checker for txt files
" use 'z=' when in Normal mode on mispelled word to get suggestions
" use 'zg' to add a highlighted word to user dictionary
" When the spellcheck is active, you should see 'SPELL' next to mode name
au BufRead,BufNewFile *.txt set spell spelllang=en_us
au BufRead,BufNewFile *.tex set spell spelllang=en_us

au BufRead,BufNewFile kwmrc set filetype=kwm
au! Syntax kwm source ~/.vim/syntax/kwm.vim

au BufRead,BufNewFile *.tex command Refresh execute "w | execute \"silent !pdflatex % && latexmk -c\" | redraw!"
au BufRead,BufNewFile *.tex map <C-R> :Refresh<CR>
