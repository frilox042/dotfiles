
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

let g:ale_linters={
      \ 'python': ['flake8', 'mypy'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \}

let g:ale_fixers={
      \ '*': ['remove_trailing_lines', 'trim_whitespace'],
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint'],
      \}

" Move to the next ALE warning / error
nnoremap ]r :ALENextWrap<CR>
" Move to the previous ALE warning / error
nnoremap [r :ALEPreviousWrap<CR>
" Run autofix
nnoremap [] :ALEFix<CR>

