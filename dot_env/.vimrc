let g:coc_global_extensions = ['coc-tsserver', 'coc-yaml', 'coc-python', 'coc-clangd', 'coc-html', 'coc-css', 'coc-sh', 'coc-omnisharp', 'coc-go']
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
Plugin 'neoclide/coc.nvim'


call vundle#end()
filetype plugin indent on 

set number
set tabstop=2
set shiftwidth=2
set expandtab
set re=2
set shell=/bin/bash
setlocal indentkeys+=0

syntax on

