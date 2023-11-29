set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set hlsearch
set ic
set encoding=utf-8
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'Luxed/ayu-vim'
Plug 'tpope/vim-fugitive'
Plug 'ycm-core/YouCompleteMe'
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
Plug 'vim-airline/vim-airline'
" Plug 'psf/black', { 'branch': 'stable' }
call plug#end()

" augroup black_on_save
  " autocmd!
  " autocmd BufWritePre *.py Black
" augroup end

let g:ale_linters_explicit = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\   'python': ['black'],
\}
let g:ale_fix_on_save = 1

let g:airline#extensions#ale#enabled = 1

let g:ycm_echo_current_diagnostic = 'virtual-text'

set termguicolors     " enable true colors support
set background=dark     " for either mirage or dark version.
" NOTE: `background` controls `g:ayucolor`, but `g:ayucolor` doesn't control `background`

let g:ayucolor="mirage" " for mirage version of theme
colorscheme ayu

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-[> :cprev<CR>
nnoremap <C-]> :cnext<CR>
nnoremap <C-x> :YcmCompleter FixIt<CR>

