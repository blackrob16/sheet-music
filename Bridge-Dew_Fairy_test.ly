\header {
  title = "Dew Fairy Test"
  composer = "Frank Bridge
  "
}

\version "2.19.80.1"

VoiceOne = {\clef "treble" \time 6/8
	\tieUp \stemUp c''4~  c''16  c''16  c''4~  c''16  c''16 | %V1-1	
	 c''4~\tuplet 4/2 {c''16 [s16 b'16 c''16 ]} b'4~ b'16 a'16 | %V1-2
	}

VoiceTwo = {\clef "treble" \time 6/8
	\slurDown  \tuplet 48/24 {\teeny \stemDown c''16 ([e'16  e'16 \change Staff = "lower" \stemUp a'16 a'16 a'16 a'16 a'16\change Staff = "upper"  \stemDown e'16 e'16  c''16 ]) } s32 \tuplet 48/24  {\teeny \stemDown c''16 ([e'16  e'16 \change Staff = "lower" \stemUp a'16 a'16 a'16 a'16 a'16 \change Staff = "upper"  \stemDown e'16 	e'16  c''16 ]) } s32| % V2-1
	
	\slurDown  \tuplet 48/24  {\teeny \stemDown  c''16 ([e'16 s16 e'16 \change Staff = "lower" \stemUp a'16 a'16 a'16 a'16 a'16\change Staff = "upper"  \stemDown e'16 e'16 b'16 c''16 ]) } \tuplet 12/6  {\teeny \stemDown b'16 ([e'16  e'16 \change Staff = "lower" \stemUp a'16 a'16 a'16 a'16 a'16 \change Staff = "upper"  \stemDown e'16 e'16  a'16 ]) } |% V2-2
	}

VoiceThree =  {\clef "treble" \time 6/8
	s2. | % V3-1
	s2. | % V3-2
	}
	
\score {
	 \new PianoStaff 
		<<
		\new Staff = "upper"
		 <<
		\new  Voice = "VoiceOne"  \VoiceOne 
		\new Voice = "VoiceTwo"  \VoiceTwo
		>>
			
		\new Staff = "lower" 
		<< 
		\new 	Voice = "VoiceThree"  \VoiceThree
		>>
		>>
		
	\layout {
	\context {
		\Score
		skipBars = ##f
		autoBeaming = ##f
	}
}
}
