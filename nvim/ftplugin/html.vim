" Adjust the indentation when editing HTML files.

set expandtab
set tabstop=2
set shiftwidth=2

" Automatically format the file using Prettier.

:autocmd BufWritePost * silent PrettierAsync
