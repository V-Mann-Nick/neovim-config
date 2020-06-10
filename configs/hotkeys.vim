" Search for visually selected text
vnoremap // y/<C-R>"<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>oe :setlocal spell! spelllang=en_us<CR>
map <leader>og :setlocal spell! spelllang=de<CR>

" Insert line without going into insert
nmap mo o<Esc>k
nmap mO O<Esc>j

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

" Check file in shellcheck:
map <leader>s :!clear && shellcheck %<CR>

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" easy windows resizing
" nnoremap <M-j> :resize -10<cr>
" Use alt + hjkl to resize windows
nnoremap <silent> <C-M-j>    :resize -2<CR>
nnoremap <silent> <C-M-k>    :resize +2<CR>
nnoremap <silent> <C-M-h>    :vertical resize -2<CR>
nnoremap <silent> <C-M-l>    :vertical resize +2<CR>

" expand to self closing tag
imap <C-y>k <Space><BS><C-y>,<ESC>hi<C-y>j/\/><Enter>hi<Space>
