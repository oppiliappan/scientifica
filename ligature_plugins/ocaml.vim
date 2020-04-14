" fork of https://gist.github.com/NicolasT/1043747

" set correct conceal
setlocal conceallevel=1

" we need the conceal feature (vim ≥ 7.3)
if exists('g:no_ocaml_conceal') || !has('conceal')
    finish
endif

" fun
syntax keyword ocamlNiceKeyword fun conceal cchar=λ

" ->
syntax match ocamlArrow   /->/       contains=ocamlArrowM,ocamlArrowH
syntax match ocamlArrowM  /-/        contained containedin=ocamlArrow conceal cchar=
syntax match ocamlArrowH  /-\@<=>/   contained containedin=ocamlArrow conceal cchar=→

" <-
syntax match ocamlArrow   /<\ze-/    contains=ocamlArrowM,ocamlArrowH
syntax match ocamlArrowH  /</        contained containedin=ocamlArrow conceal cchar=←

" <>
syntax match ocamlNiceOperator "<>"   conceal cchar=≠

" greek letters
syntax match ocamlNiceTypes "'a" conceal cchar=α
syntax match ocamlNiceTypes "'b" conceal cchar=β
syntax match ocamlNiceTypes "'c" conceal cchar=γ
syntax match ocamlNiceTypes "'d" conceal cchar=δ
syntax match ocamlNiceTypes "'e" conceal cchar=ε
