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
