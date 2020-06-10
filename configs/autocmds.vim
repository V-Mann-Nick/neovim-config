" nvim
autocmd Bufwritepost init.vim source %
map <leader>ev :vsp $MYVIMRC<CR>
autocmd Bufwritepost ~/.config/nvim/configs/* source $MYVIMRC

" sxhkd
autocmd bufwritepost sxhkdrc !restartsx

" dwmbar
autocmd bufwritepost dwmbar !pkill dwmbar; dwmbar > /dev/null 2>&1 & disown
"
" When shortcut files are updated, renew bash and ranger configs with new material:
autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

" Use lualatex compiler for brief templates
autocmd BufWritePost brief.tex silent !lualatex "%"

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
