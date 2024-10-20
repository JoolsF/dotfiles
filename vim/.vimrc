" TODO
" Set folds for settings in this file
" Install plugins 


" ! PLUGINS
" Uses vim-plug plugin manager.  See .vim/autoload/plug.vim
" :PlugInstall to download and install plugins 

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'

Plug 'preservim/nerdtree'

" https://github.com/junegunn/fzf.vim#using-vim-plug
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()


" ! SETTINGS

set nocompatible

" highlight syntax
syntax on        

" show line numbers
set number       

" disable the swapfile
set noswapfile   

" highlight all results
set hlsearch    

" ignore case in search
set ignorecase   

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" show search results as you type
set incsearch  

" Esc key mapped to ;; to exit insert mode  
imap ;; <ESC>

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Highlight cursor line underneath the cursor horizontally.
" set cursorline  

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set textwidth=80

" **** FZF CONFIG START ****

" Map Ctrl+E to fzf's :History
nmap <C-e> :History<CR>
" Ctrl+F to fzf's :GFiles which is similar to :Files but excludes .gitignore
nmap <C-f> :GFiles!<CR>
" CTRL+R to fzf's :Rg ripgrep command
nmap <C-g> :Rg!<CR>

" **** FZF CONFIG END ****
