set background=dark

set shiftwidth=4
set backspace=2
set tabstop=4
set expandtab
set splitright
set relativenumber
set clipboard=unnamedplus
set completeopt=longest,menuone

syntax on
filetype plugin on
filetype plugin indent on

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$\|\t/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t/
au InsertLeave * match ExtraWhiteSpace /\s\+$\|\t/

nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
nnoremap <C-l> <C-w>w
nnoremap <C-h> <C-w>W
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-?> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

function! RelativeLineNoToggle()
    if &relativenumber
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>

inoremap jj <ESC>
xnoremap p "_dP

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype typescript setlocal ts=2 sts=2 sw=2
autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype yaml setlocal ts=2 sts=2 sw=2

" "+y     Yank to clipboard
" "+p     Paste from clipboard
