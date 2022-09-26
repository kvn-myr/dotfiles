" set leader key
let g:mapleader = "\<Space>"

syntax enable                           " Enables syntax highlighing
set encoding=utf-8                      " The encoding displayed
"set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=2                         " More space for displaying messages
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set clipboard=unnamedplus               " Copy paste between vim and everything else
set number relativenumber               " Line numbers
set colorcolumn=80                      " Bar at 80
set signcolumn=yes                      " Add extra column for errors or similar stuff
set nohlsearch                          " Do not show highlighted search after the search
set noerrorbells                        " Be silent pls
set tabstop=4 softtabstop=4             " Insert 4 spaces for a tab
set smartindent                         " Makes indenting smart
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set expandtab                           " Converts tabs to spaces
set hidden                              " Required to keep multiple buffers open multiple buffers
"set nowrap                              " Display long lines as just one line
set incsearch                           " Show found elements while searching
set scrolloff=8                         " Stop scrolling 8 lines before the end of the file is reached
set cursorline                          " Enable highlighting of the current line
set updatetime=50                       " Faster completion
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
