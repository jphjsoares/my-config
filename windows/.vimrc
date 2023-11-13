set nocompatible              " be iMproved, required
set guifont=Fira_Code:h12
set backspace=indent,eol,start
set belloff=all

" change gvim look
set guioptions -=m
set guioptions -=T

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/Vundle.vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

call plug#begin('~/vimfiles/plugged/')
    Plug 'EdenEast/nightfox.nvim' " Vim-Plug
	Plug 'VundleVim/Vundle.vim'
	Plug 'preservim/nerdtree'
	Plug 'SirVer/ultisnips'
    Plug 'octol/vim-cpp-enhanced-highlight'
	Plug 'honza/vim-snippets'
    Plug 'morhetz/gruvbox'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
call plug#end()

filetype plugin indent on    " required

" #############################
" Plugin related variables
" #############################
let g:UltiSnipsExpandTrigger="<S-t>"
let g:UltiSnipsJumpForwardTrigger="<S-f>"
let g:UltiSnipsJumpBackwardTrigger="<S-b>"

" Colorscheme
if has('termguicolors')
    set termguicolors
endif
set background=dark
colorscheme gruvbox

" #############################
" Vim related settings
" #############################
inoremap { {<Cr><Cr>}<Up>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap " ""<Left>
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

set number
set ruler
set autoindent
set tabstop=4
set shiftwidth=4
set ttyfast
set expandtab
set hlsearch
set incsearch
set linebreak

if has("syntax")
	syntax enable
endif

" When setting up a mac system make sure of this
if $PLATFORM == 'mac'
	set backspace=indent,eol,start
endif
