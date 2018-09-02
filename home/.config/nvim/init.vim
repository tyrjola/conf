call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/echodoc.vim'
Plug 'vim-scripts/auto-pairs-gentle'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'othree/jspc.vim'
Plug 'steelsojka/deoplete-flow', { 'do': 'npm install -g flow-bin' }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'

call plug#end()

let g:NERDTreeWinSize=40
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:echodoc#enable_at_startup = 1

let g:deoplete#enable_at_startup = 1

let g:UltiSnipsExpandTrigger="<C-b>"
let g:UltiSnipsListSnippets="<C-s>"
let g:UltiSnipsJumpForwardTrigger="<C-b>"
let g:UltiSnipsJumpBackwardTrigger="<C-m>"
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])

let g:ale_linters = {
\ 'python': ['flake8']
\}

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier', 'eslint'],
\ 'python': ['autopep8']
\}
let g:ale_fix_on_save = 1

let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<f3>"
let g:jedi#usages_command = "<f5>"

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=jedi#completions

set noshowmode
set shortmess+=c

source ~/.vimrc
