if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'	
Plug 'scrooloose/nerdtree'
Plug 'elixir-lang/vim-elixir'
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

call plug#end()

set number

colorscheme pop-punk

" pop-punk ANSI colors for vim terminal
let g:terminal_ansi_colors = pop_punk#AnsiColors()

" for the airline theme - note the underscore instead of the hyphen
let g:airline_theme = 'pop_punk'

" just for fun
let g:airline_section_c = '🎸 %F'

let g:airline_powerline_fonts = 1

let g:auto_save = 1  " enable AutoSave on Vim startup

" Enable syntax highlighting
syntax on

" Enables filetype detection, loads ftplugin, and loads indent
filetype plugin indent on

let g:tex_flavor = 'latex'
