syntax clear cppOperator


syntax match cppBelleOperator "<=" conceal cchar=≤
syntax match cppBelleOperator ">=" conceal cchar=≥
syntax match cppBelleOperator "!=" conceal cchar=≠


" ->
syn match cppPointer   /->/       contains=PointerTail,PointerHead
syn match PointerTail  /-/        contained containedin=cppPointer conceal cchar=
syn match PointerHead  /-\@<=>/   contained containedin=cppPointer conceal cchar=→

" ==
syn match cppIsEqual   /==/       contains=FirstEqual,SecondEqual
syn match FirstEqual  /=/         contained containedin=cppIsEqual conceal cchar=
syn match SecondEqual  /=\@<=>/   contained containedin=cppIsEqual conceal cchar=


hi link cppBelleOperator Operator
hi link cppPointer Keyword


hi! link Conceal Operator
setlocal conceallevel=1
