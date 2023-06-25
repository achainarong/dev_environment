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
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'rhysd/vim-clang-format'
Plug 'sindrets/diffview.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'tpope/vim-surround'
Plug 'APZelos/blamer.nvim'
Plug 'akinsho/toggleterm.nvim'
Plug 'preservim/nerdtree'

call plug#end()

" start nerdtree if no args is given so nertree stays open when closing files

function! StartUp()
    if 0 == argc()
        NERDTree
    end
endfunction

autocmd VimEnter * call StartUp()

let NERDTreeShowHidden=1

filetype plugin indent on

" keymappings

nmap <silent> gr <Plug>(coc-references)
nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <silent> gi <Plug>(coc-implementation)

nnoremap <c-l> :CocNext<cr>
nnoremap <c-h> :CocPrev<cr>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> ,r <Plug>(coc-rename)


nmap <F1> :NERDTreeToggle<CR>
nmap <F2> :NERDTreeFind<CR>
nmap <F3> :FZF<CR>

inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"
inoremap <silent><expr> <cr> "\<c-g>u\<CR>"

" commands

command! -nargs=0 Pr :call CocAction('runCommand', 'prettier.formatFile')

" changing some colors for hinting

hi CocHintFloat ctermfg=12 ctermbg=DarkGrey guifg=#15aabf guibg=#5c5c5c
hi CocFloating ctermbg=DarkGrey guibg=#e4e4e4
hi CocInlayHint ctermfg=12 ctermbg=DarkGrey guifg=#15aabf guibg=#5c5c5c


