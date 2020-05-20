autocmd FileType tex set tw=80
autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>

" Compile latex after write
autocmd bufwritepost *.tex silent !pdflatex "%"

" copy cv to portfolio folder when saving
autocmd bufwritepost cv_en.tex silent !cp $HOME/Documents/paperwork/Arbeit/Lebenslauf/dev_cv/cv_en.pdf $HOME/Documents/code/portfolio/static
autocmd bufwritepost cv_de.tex silent !cp $HOME/Documents/paperwork/Arbeit/Lebenslauf/dev_cv/cv_de.pdf $HOME/Documents/code/portfolio/static
