" 5px wide equals 
" 5px wide minus 


" set correct conceal
setlocal conceallevel=1

" lambda's
syntax match hsLambda "\\" conceal cchar=λ

" function composition
syntax match hsCompose / \. /ms=s+1,me=e-1 conceal cchar=·

" ->
syn match MHArrow   /->/       contains=MHArrowM,MHArrowH
syn match MHArrowM  /-/        contained containedin=MHArrow conceal cchar=
syn match MHArrowH  /-\@<=>/   contained containedin=MHArrow conceal cchar=→

" <-
syn match HMArrow   /<\ze-/    contains=HMArrowM,HMArrowH
syn match HMArrowH  /</        contained containedin=HMArrow conceal cchar=←

" =>
syn match DMHArrow   /=>/       contains=DMHArrowM,DMHArrowH
syn match DMHArrowM  /=/        contained containedin=DMHArrow conceal cchar=
syn match DMHArrowH  /=\@<=>/   contained containedin=DMHArrow conceal cchar=⇒

" >>=
syn match DTTMArrow   />>\ze=/   contains=DTTMArrowT,DTTMArrowTT
syn match DTTMArrowTT />/        contained containedin=DTTMArrow conceal cchar=
syn match DTTMArrowT  />\@<=>/   contained containedin=DTTMArrow conceal cchar=

" >=>
syn match DTMHArrow   />=>/      contains=DTMHArrowT,DTMHArrowM,DTMHArrowH
syn match DTMHArrowT  />/        contained containedin=DTMHArrow conceal cchar=
syn match DTMHArrowM  /=/        contained containedin=DTMHArrow conceal cchar=
syn match DTMHArrowH  /=\@<=>/   contained containedin=DTMHArrow conceal cchar=⇒

" <=<
syn match DHMTArrow   /<=</      contains=DHMTArrowM,DHMTArrowH,DHMTArrowT
syn match DHMTArrowH  /</        contained containedin=DHMTArrow conceal cchar=⇐
syn match DHMTArrowM  /=/        contained containedin=DHMTArrow conceal cchar=
syn match DHMTArrowT  /=\@<=</   contained containedin=DHMTArrow conceal cchar=

" =<<
syn match DMTTArrow    /=<</      contains=DMTTArrowT,DMTTArrowTT,DMTTArrowM
syn match DMTTArrowM   /=/        contained containedin=DMTTArrow conceal cchar=
syn match DMTTArrowT   /</        contained containedin=DMTTArrow conceal cchar=
syn match DMTTArrowTT  /<\@<=</   contained containedin=DMTTArrow conceal cchar=<

" -<
syn match MTArrow   /-</       contains=MTArrowT,MTArrowM
syn match MTArrowT  /-/        contained containedin=MTArrow conceal cchar=
syn match MTArrowM  /-\@<=</   contained containedin=MTArrow conceal cchar=⤙

" -<<
syn match MTTArrow   /-<</          contains=MTTArrowT,MTTArrowM,HTTArrowTT
syn match MTTArrowM  /-<</me=s+1    contained containedin=MTTArrow conceal cchar=
syn match MTTArrowT  /-\@<=</       contained containedin=MTTArrow conceal cchar=⤛
syn match MTTArrowTT /\(-<\)\@<=</  contained containedin=MTTArrow conceal cchar=<

" >-
syn match TMArrow   />\ze-/    contains=TMArrowT,TMArrowM
syn match TMArrowT  />/        contained containedin=TMArrow conceal cchar=⤚

">>-
syn match TTMArrow    />>\ze-/  contains=TTMArrowT,TTMArrowTT,TTMArrowTTT
syn match TTMArrowTT  />/       contained containedin=TTMArrow conceal cchar=
syn match TTMArrowT   />\@<=>/  contained containedin=TTMArrow conceal cchar=⤜
syn match TTMArrowTTT  /-<</me=s+1    contained containedin=TTMArrow conceal cchar=

" These are probably not all arrow patterns one could come up with, so if you need
" another one and you can't think of how to implement it, please contact me to ask
" for it! I'll try to create the syntax rules.

" Also if you have come up with some more patterns please contact me so I can
" include them in the list.
