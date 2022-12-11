set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/bundle/')
	Plugin 'sainnhe/everforest'
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'ycm-core/YouCompleteMe'
	Bundle 'octol/vim-cpp-enhanced-highlight'
	Plugin 'preservim/nerdtree'
	Plugin 'SirVer/ultisnips'
	Plugin 'honza/vim-snippets'
call vundle#end()            " required

filetype plugin indent on    " required

" #############################
" Plugin related variables
" #############################
let g:UltiSnipsExpandTrigger="<S-t>"
let g:UltiSnipsJumpForwardTrigger="<S-f>"
let g:UltiSnipsJumpBackwardTrigger="<S-b>"

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']

" Colorscheme
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:everforest_background='hard'
let g:everforest_better_performance=1
colorscheme everforest

" #############################
" Vim related settings
" #############################
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
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
