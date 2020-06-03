call plug#begin('~/.vim/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'junegunn/fzf.vim'
  Plug 'editorconfig/editorconfig-vim'
  Plug 'lervag/vimtex'
  Plug 'itchyny/lightline.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }

  " New
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-fugitive'
  Plug 'mhinz/vim-signify'

  " PHP
  Plug 'StanAngeloff/php.vim'
  Plug 'stephpy/vim-php-cs-fixer'
  Plug 'phpactor/phpactor'

  " JS
  Plug 'pangloss/vim-javascript'
  Plug 'mxw/vim-jsx'
  Plug 'leafgarland/typescript-vim'
call plug#end()


set clipboard=unnamedplus " Copy and pasting from system clipboard
set number " Always show line numbers
set wildignore=*.aux,*.bbl,*.run.xml,*.synctex.gz,*.toc,*.xdv,*.log,*.bcf,*.blg,*.fdb_latexmk,*.fls,*.lof,*.out,
set termguicolors " True color support
set noshowmode " Hide mode, because lightline already shows it
set laststatus=2 " Show lightline when there is only one screen
set ts=2 sts=2 sw=2 expandtab " Tab width 4, soft tab 2, shift width 2, use spaces
set wrap linebreak " Wrap lines, do not break words
set ignorecase smartcase incsearch " ignore case only when searching lowercase, search while typing
let g:tex_flavor = 'latex'
syntax on " Syntax highlighting
filetype plugin on
filetype indent on


let mapleader = ' '
let maplocalleader = ','
map <C-p> :Files<CR>
map <C-o> :NERDTreeToggle<CR>
nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>s :w<CR>
inoremap <C-@> <C-x><C-o>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Source the vimrc file after saving it
if has('autocmd')
  autocmd bufwritepost .vimrc source $MYVIMRC
endif


colorscheme dracula

let NERDTreeMinimalUI=1

" JS
let g:jsx_ext_required = 0


" LATEX
let g:vimtex_view_method = 'mupdf'
"let g:vimtex_compiler_latexmk = {'callback' : 0}
let NERDTreeRespectWildIgnore = 1
if has('clientserver') &&  empty(v:servername) && exists('*remote_startserver')
  call remote_startserver('VIM')
endif

