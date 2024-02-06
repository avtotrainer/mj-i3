syntax on
set mouse=a  " enable mouse
set encoding=utf-8
set number
set relativenumber
set noswapfile
set scrolloff=7
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
filetype plugin indent on      " load filetype-specific indent files
set smartindent

"call plug#begin('~/.vim/plugged')
"    Plug 'preservim/nerdtree'
"    Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
"call plug#end()


source $HOME/.vim/ru_keymap.vim
source ~/.vim/ge_keymap.vim
function! UpdateKeyboardLayout()
    let g:keyboard_layout = substitute(system('xkb-switch'), '\n', '', '')
endfunction
autocmd BufWinEnter * call UpdateKeyboardLayout()
set statusline+=%{g:keyboard_layout}
" set statusline+=%{exists('g:keyboard_layout') ? g:keyboard_layout : 'N/A'}
nmap <Up> <nop>
nmap <Down> <nop>
nmap <Left> <nop>
nmap <Right> <nop>
