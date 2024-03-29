" configs

set number
set tabstop=2
set shiftwidth=2
set expandtab
set re=2
set shell=/bin/bash
setlocal indentkeys+=0

syntax on

" plugins
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
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'neoclide/coc.nvim'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-commentary'
Plugin 'junegunn/fzf'

call vundle#end()
filetype plugin indent on 

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

let NERDTreeShowHidden=1

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

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')


" colors

hi CocHintFloat ctermfg=12 ctermbg=DarkGrey guifg=#15aabf guibg=#5c5c5c
hi CocFloating ctermbg=DarkGrey guibg=#e4e4e4
hi CocInlayHint ctermfg=12 ctermbg=DarkGrey guifg=#15aabf guibg=#5c5c5c

