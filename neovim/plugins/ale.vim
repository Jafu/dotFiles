" ale
let g:ale_linters = {
\ 'javascript': ['eslint'],
\ 'html': [ 'prettier' ],
\ 'css': [ 'prettier' ],
\ }

let g:ale_fixers = {
\ 'javascript': ['eslint'],
\ 'html': [ 'prettier' ],
\ 'css': [ 'prettier' ],
\ }

nnoremap <leader>e :ALENext<CR>
nnoremap <leader>E :ALEPrevious<CR>
highlight ALEWarning ctermbg=none
highlight ALEError ctermbg=none

" Make ale work with coc
let g:ale_disable_lsp = 1

