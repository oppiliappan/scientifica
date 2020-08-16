setlocal conceallevel=1
syntax clear rustOperator

syntax match rustBelleOperator "<=" conceal cchar=≤
syntax match rustBelleOperator ">=" conceal cchar=≥
syntax match rustBelleOperator "!=" conceal cchar=≠

" ->
syn match rustArrowCharacter   /->/      contains=PointerTail,PointerHead
syn match PointerTail          /-/       contained containedin=rustReturn conceal cchar=
syn match PointerHead          /-\@<=>/  contained containedin=rustReturn conceal cchar=→

" =>
syn match rustImplies   /=>/      contains=ImpliesTail,ImpliesHead
syn match ImpliesTail  /=/        contained containedin=rustImplies conceal cchar=
syn match ImpliesHead  /=\@<=>/   contained containedin=rustImplies conceal cchar=⇒

" ==
syn match rustIsEqual   /==/     contains=FirstEqual,SecondEqual
syn match FirstEqual  /=/        contained containedin=rustIsEqual conceal cchar=
syn match SecondEqual  /=\@<=>/  contained containedin=rustIsEqual conceal cchar=

" #[
syn match rustAttributeHash  /#\[/  contains=rustAH,rustAB
syn match rustAH         /#/        contained containedin=rustAH conceal cchar=
syn match rustAB        /\[/   contained containedin=rustAB conceal cchar=
