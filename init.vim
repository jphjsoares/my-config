set number
set autoindent
set hidden
syntax enable

" Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Color scheme
set termguicolors
colorscheme nightfly
hi Normal guibg=NONE ctermbg=NONE




" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
