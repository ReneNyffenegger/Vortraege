call TQ84_log_indent(expand('<sfile>'))

fu! <SID>InsertSlide()  " {

  call TQ84_log_indent(expand('<sfile>'))

  let l:jumpTo_1 = Tabber#MakeJumpToMark()
  let l:jumpTo_2 = Tabber#MakeJumpToMark()

  call Tabber#InsertUnindentedSkeleton(
  \ ['        <section><h1>'    . l:jumpTo_1 . '</h1> <!--{-->',
  \  '          ' . l:jumpTo_2,
  \  '        </section> <!--}-->'
  \ ])

  normal zo

  call Tabber#Add([
     \ ['jump-to', l:jumpTo_1 ],
     \ ['jump-to', l:jumpTo_2 ]
     \ ])

  call Tabber#TabPressed()

  call TQ84_log_dedent()

  return ''

endfu " }
fu! <SID>InsertSection()  " {

  call TQ84_log_indent(expand('<sfile>'))

  let l:jumpTo_1 = Tabber#MakeJumpToMark()
  let l:jumpTo_2 = Tabber#MakeJumpToMark()

  call Tabber#InsertUnindentedSkeleton(
  \ ['          <section><h2>'    . l:jumpTo_1 . '</h2> <!--{-->',
  \  '            ' . l:jumpTo_2,
  \  '          </section> <!--}-->'
  \ ])

  normal zo

  call Tabber#Add([
     \ ['jump-to', l:jumpTo_1 ],
     \ ['jump-to', l:jumpTo_2 ]
     \ ])

  call Tabber#TabPressed()

  call TQ84_log_dedent()

  return ''

endfu " }
fu! <SID>InsertTextDiv()  " {

  call TQ84_log_indent(expand('<sfile>'))

  let l:jumpTo_1 = Tabber#MakeJumpToMark()
  let l:jumpTo_2 = Tabber#MakeJumpToMark()

  call Tabber#InsertUnindentedSkeleton(
  \ ['            <div class="txt">',
  \  '              ' . l:jumpTo_1, 
  \  '            </div>',
  \  '            ' . l:jumpTo_2
  \ ])


  call Tabber#Add([
     \ ['jump-to', l:jumpTo_1 ],
     \ ['jump-to', l:jumpTo_2 ]
     \ ])

  call Tabber#TabPressed()

  call TQ84_log_dedent()

  return ''

endfu " }
fu! <SID>InsertBibelVers() " {
  call TQ84_log_indent(expand('<sfile>'))

  let l:vers = Bibel#EingabeBuchKapitelVers()
  let l:text = Bibel#VersText(l:vers)
  let l:id   = Bibel#VersID  (l:vers)

  let l:lines = [
   \'            <div class="txt">',
   \'              <div class="zitat">',
   \'                 ' . l:text ,
   \'                 <span class="quelle">' . l:id . '</span>',
   \'              </div>',
   \'            </div>' ]

  call GUI#InsertLines(l:lines)
  
  call TQ84_log_dedent()
  return ''
endfu " }

inoremap <buffer> ,sld  =<SID>InsertSlide()<CR>
inoremap <buffer> ,sct  =<SID>InsertSection()<CR>
inoremap <buffer> ,txt  =<SID>InsertTextDiv()<CR>
inoremap <buffer> ,vrs  =<SID>InsertBibelVers()<CR>

nnoremap <buffer> ,sld i=<SID>InsertSlide()<CR>
nnoremap <buffer> ,sct i=<SID>InsertSection()<CR>
nnoremap <buffer> ,txt i=<SID>InsertTextDiv()<CR>
nnoremap <buffer> ,vrs i=<SID>InsertBibelVers()<CR>

call TQ84_log_dedent()
