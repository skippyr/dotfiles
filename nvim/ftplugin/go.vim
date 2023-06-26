" Adjust the indentation when editing Go files.

set noexpandtab

" Automatically format the file using `go fmt`.

:autocmd BufWritePost * silent !go fmt %
