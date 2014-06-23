
"" startup pathogen
execute pathogen#infect()
Helptags

set nocompatible                " no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation
set updatecount=0               " no swap files

let mapleader=","               " change leader key

"" Whitespace & characters
set wrap                        " wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode
set nojoinspaces                " join only one space after .
set autoindent                  " automatically close baces, etc...

set list                        " show characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮ " Character list substitution (better chars)
set showbreak=↪\

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Status and line numbers
set ruler
set number

"" Window split

set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" syntax overrides for complex templates
autocmd BufRead,BufNewFile *.pdf.erb set filetype=eruby.html

"" local costumizations
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
