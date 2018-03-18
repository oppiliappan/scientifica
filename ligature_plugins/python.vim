" This is a fork of vim-cute-python
" with a few character replacements to
" play well with scientifica

" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

syntax clear pythonOperator

syntax match pythonOperator "\<is\>"

syntax match pyNiceOperator "\<in\>" conceal cchar=∈
syntax match pyNiceOperator "\<or\>" conceal cchar=∨
syntax match pyNiceOperator "\<and\>" conceal cchar=∧

syntax match pyNiceOperator "<=" conceal cchar=≤
syntax match pyNiceOperator ">=" conceal cchar=≥

syntax match pyNiceOperator "=\@<!===\@!" conceal cchar=≡
syntax match pyNiceOperator "!=" conceal cchar=≠

syntax keyword pyNiceOperator sum conceal cchar=∑
syntax match pyNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match pyNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

syntax keyword pyNiceStatement lambda conceal cchar=λ

hi link pyNiceOperator Operator
hi link pyNiceStatement Statement
hi link pyNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
