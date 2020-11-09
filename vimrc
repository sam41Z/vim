if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'	
Plug 'danro/rename.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'slashmili/alchemist.vim'
Plug 'bignimbus/pop-punk.vim'
Plug 'sheerun/vim-polyglot'
Plug 'chun-yang/auto-pairs'
Plug '907th/vim-auto-save'
Plug 'lervag/vimtex'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}

call plug#end()

set number
set cursorline
set hlsearch
set ignorecase
set incsearch
set smartcase
set mouse=a
set background=dark

colorscheme pop-punk
" Enable syntax highlighting
syntax on
" Enables filetype detection, loads ftplugin, and loads indent
filetype plugin indent on


" pop-punk ANSI colors for vim terminal
let g:terminal_ansi_colors = pop_punk#AnsiColors()

let g:auto_save = 1  " enable AutoSave on Vim startup

" airline  
let g:airline_theme = 'pop_punk'
let g:airline_section_c = '🎸 %F'
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

" FZF
nnoremap <silent> <C-f> :Files<CR>

let g:tex_flavor = 'latex'

" ALE configs
let g:ale_linters = { 'javascript': ['flow-language-server'],'elixir': ['elixir-ls'],}
let g:ale_fixers = {
      \  'javascript': ['prettier', 'eslint'], 
      \  'typescript': ['prettier', 'eslint'],
      \  'typescriptreact': ['prettier', 'eslint'],
      \  'elixir': ['mix_format'],
      \  'scss':['prettier', 'stylelint']
      \ }

let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_disable_lsp = 1
let g:ale_sign_error = '😡'
let g:ale_sign_warning = '😞'
let g:ale_sign_column_always = 1
