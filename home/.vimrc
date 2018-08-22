set shiftwidth=4
set backspace=2
set tabstop=4
set expandtab
set splitright
set nocompatible
set relativenumber
set ruler
set clipboard=unnamedplus

execute pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on

set background=dark

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
nnoremap <f2> :NERDTreeToggle<CR>
nnoremap <f3> :TlistToggle<CR>
nnoremap <f4> :%s/\s\+$//g<CR>
nnoremap <f5> :Neoformat<CR>
nnoremap <f9> :make<CR>

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
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <expr><S-tab> pumvisible() ? "\<c-p>" : "\<S-tab>"

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

autocmd FileType java setlocal omnifunc=javacomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

let g:NERDTreeWinSize=40
let g:Tlist_WinWidth=40
let g:ansible_options = {'ignore_blank_lines': 0}
let g:deoplete#enable_at_startup = 1

let b:ale_linters = {'javascript': ['eslint']}

" "+y     Yank to clipboard
" "+p     Paste from clipboard
