call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Shougo/echodoc.vim'
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
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/denite.nvim'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install', 'for': ['typescript'] }
Plug 'martinda/Jenkinsfile-vim-syntax'
Plug 'modille/groovy.vim'
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'udalov/kotlin-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'ekalinin/Dockerfile.vim'

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
\ 'typescript': ['tslint'],
\ 'python': ['flake8']
\}

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier', 'eslint'],
\ 'typescript': ['prettier', 'tslint']
\}
let g:ale_fix_on_save = 1

let g:jedi#completions_enabled = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#goto_command = "<f3>"
let g:jedi#usages_command = "<f5>"

let g:typescript_indent_disable = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.ts,*.tsx Prettier

let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#semi = 'false'
let g:prettier#config#trailing_comma = 'none'

let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_remap_spacebar=1
let g:terraform_fmt_on_save=1

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=jedi#completions
"autocmd BufNewFile,BufRead *Dockerfile* set syntax=Dockerfile

set noshowmode
set shortmess+=c
set switchbuf+=usetab,newtab

nnoremap <f2> :NERDTreeToggle<CR>
nnoremap <f3> :ALEGoToDefinitionInTab<CR>
nnoremap <f4> :%s/\s\+$//g<CR>
nnoremap <f5> :ALEFindReferences<CR>
nnoremap <f6> :call RelativeLineNoToggle()<CR>
nnoremap <f7> :tab split<CR>
nnoremap <f9> :make<CR>

autocmd FileType typescript,typescript.tsx nnoremap <f3> :TSDef<CR>
autocmd FileType typescript,typescript.tsx nnoremap <f5> :TSRefs<CR>

source ~/.vimrc
