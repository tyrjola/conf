set shiftwidth=4
set backspace=2
set tabstop=4
set expandtab
set splitright
set nocompatible
set number
set ruler
set clipboard=unnamedplus

execute pathogen#infect()

syntax on
filetype plugin on
filetype plugin indent on

highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$\|\t/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|\t/
au InsertLeave * match ExtraWhiteSpace /\s\+$\|\t/

nnoremap <C-Up> :tabnext<CR>
nnoremap <C-Down> :tabprevious<CR>
nnoremap <C-Right> <C-w>w
nnoremap <C-Left> <C-w>W
nnoremap <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <C-?> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
nnoremap <f2> :NERDTreeToggle<CR>
nnoremap <f3> :TlistToggle<CR>
nnoremap <f4> :%s/\s\+$//g<CR>
nnoremap <f9> :make<CR>

xnoremap p "_dP

let g:NERDTreeWinSize=40

let g:Tlist_WinWidth=40
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ansible_options = {'ignore_blank_lines': 0}

" "+y     Yank to clipboard
" "+p     Paste from clipboard
