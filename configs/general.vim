syntax on
set termguicolors
set number relativenumber
" Tabs & Indent
set tabstop=8 softtabstop=2 expandtab shiftwidth=2 smarttab
set pumheight=10
set mouse=a
set nohlsearch
set clipboard=unnamedplus " use clipboard instead of vim registers
set formatoptions-=cro
colorscheme dracula

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
