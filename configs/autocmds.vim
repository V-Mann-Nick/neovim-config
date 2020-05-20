" nvim
autocmd! bufwritepost init.vim source %
map <leader>ev :vsp $MYVIMRC<CR>
autocmd! bufwritepost ~/.config/nvim/plug-config/*.vim source $MYVIMRC

" nvim
autocmd! bufwritepost init.vim source %
map <leader>ev :vsp $MYVIMRC<CR>
autocmd! bufwritepost ~/.config/nvim/plug-config/*.vim source $MYVIMRC

" sxhkd
autocmd bufwritepost sxhkdrc !restartsx

" dwmbar
autocmd bufwritepost dwmbar !pkill dwmbar; dwmbar > /dev/null 2>&1 & disown
"
" When shortcut files are updated, renew bash and ranger configs with new material:
autocmd BufWritePost ~/.config/bmdirs,~/.config/bmfiles !shortcuts

" Run xrdb whenever Xdefaults or Xresources are updated.
autocmd BufWritePost ~/.Xresources,~/.Xdefaults !xrdb %
