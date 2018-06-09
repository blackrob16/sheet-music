\version "2.19.81"

\new PianoStaff <<
 \new Staff \with {
   connectArpeggios = ##t
 } <<
   {
     a''2\arpeggio
   } \\ {
     <a' e''>\arpeggio
   }
 >>
 \new Staff {
   <f f'>\arpeggio
 }
>>
https://www.hacklily.org