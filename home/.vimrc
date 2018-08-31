set shiftwidth=4
set backspace=2
set tabstop=4
set expandtab
set splitright
set nocompatible
set relativenumber
set ruler
set clipboard=unnamedplus

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
nnoremap <f3> :ALEGoToDefinitionInTab<CR>
nnoremap <f4> :%s/\s\+$//g<CR>
nnoremap <f5> :ALEFindReferences<CR>
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

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set completeopt=longest,menuone,preview

let g:NERDTreeWinSize=40
let g:ansible_options = {'ignore_blank_lines': 0}
let g:SuperTabDefaultCompletionType = "<c-n>"

let g:deoplete#enable_at_startup = 1

let g:neosnippet#enable_completed_snippet = 1
imap <C-b>  <Plug>(neosnippet_expand_or_jump)
smap <C-b>  <Plug>(neosnippet_expand_or_jump)
xmap <C-b>  <Plug>(neosnippet_expand_target)

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}
let g:ale_fix_on_save = 1

autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

" "+y     Yank to clipboard
" "+p     Paste from clipboard
