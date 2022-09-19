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

nmap <F1> :NERDTreeToggle<CR>

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

set number
set tabstop=2
set shiftwidth=2
set expandtab
set re=2
set shell=/bin/bash
setlocal indentkeys+=0

syntax on