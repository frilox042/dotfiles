
" Runs a script that cleans out tex build files whenever I close out of a
" .text file.
autocmd VimLeave *.tex !texclear %

autocmd BufRead,BufNewFile *.tex set filetype=tex
