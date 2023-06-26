" Adjust the indentation when editing C/C++ files.

set expandtab
set tabstop=4
set shiftwidth=4

" Automatically format the file using clang-format on save.

:autocmd BufWritePost * silent !clang-format -i %
