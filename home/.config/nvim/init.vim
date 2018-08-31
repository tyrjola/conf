call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ervandew/supertab'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'othree/jspc.vim'
Plug 'steelsojka/deoplete-flow', { 'do': 'npm install -g flow-bin' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

call plug#end()

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
