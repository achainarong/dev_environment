set number
set syntax=on
set tabstop=2
set shiftwidth=2
set expandtab
set re=2
setlocal indentkeys+=0

let g:coc_global_extensions = [
  \'coc-tsserver',
  \'coc-yaml',
  \'coc-python',
  \'coc-clangd',
  \'coc-html',
  \'coc-css',
  \'coc-sh',
  \'coc-omnisharp',
  \'coc-go',
  \'coc-eslint',
  \'coc-prettier',
  \'coc-cmake',
  \'coc-flutter']

set nocompatible
filetype off

" Plugin install

call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'

call plug#end()

filetype plugin indent on

" keymappings

nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <F1> :NERDTreeToggle<CR>

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" commands

command! -nargs=0 Pr :call CocAction('runCommand', 'prettier.formatFile')

