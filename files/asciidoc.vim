
au BufNewFile,BufRead *.adoc set filetype=Dagsasciidoc

autocmd BufWritePost *.adoc silent !adoc_function_process.sh <afile>

