call TQ84_log_indent(expand('<sfile>'))

fu! <SID>InsertSlide() 

  call TQ84_log_indent(expand('<sfile>'))

  let l:jumpTo_1 = Tabber#MakeJumpToMark()
  let l:jumpTo_2 = Tabber#MakeJumpToMark()

  call Tabber#InsertUnindentedSkeleton(
  \ ['        <section><h1>'    . l:jumpTo_1 . '</h1> <!--{-->',
  \  '          ' . l:jumpTo_2,
  \  '        </section> <!--}-->'
  \ ])

  call Tabber#Add([
     \ ['jump-to', l:jumpTo_1 ],
     \ ['jump-to', l:jumpTo_2 ]
     \ ])

  call Tabber#TabPressed()

  call TQ84_log_dedent()

endfu

inoremap <buffer> sld <ESC>:call <SID>InsertSlide()<CR>

call TQ84_log_dedent()
