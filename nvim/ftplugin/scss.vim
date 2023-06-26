" Adjust the indentation when editing SCSS files.

set expandtab
set tabstop=2
set shiftwidth=2

" Automatically format the file using Prettier.

:autocmd BufWritePost * silent PrettierAsync
