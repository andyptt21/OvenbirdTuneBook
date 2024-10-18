\version "2.18.0"

DOTMPChords = \chordmode{d1 s s a2 d
			 d1 s s a2 d}

DOTMP = \relative{
  \key d \major
      %% A section
  \repeat volta 2{
    << { \voiceOne
	 a''8 d4 a8 d4 d~
	d8 d a a g4 fis
	a8 d4 a8 d d b8 a
	g8 fis g a b4 a}
       \new Voice { \voiceTwo
		    fis8 a4 fis8 a4 a~
		    a8 b a fis e4 d
		    fis8 a4 b8 a fis e d
		    b8 a b d e4 d}
     >> \oneVoice
  }
  \break
  %% B section
  \repeat volta 2{
    d4. d8 fis4 e
    d fis e8 d b a
    d4 g fis e
    b8 a b d e4 d
  }  
}

%{
  \score {
  <<
  \new ChordNames \DOTMPChords 
  \new Staff { \clef treble \DOTMP }
  >>
  \header { piece = \markup {\fontsize #4.0 "Ducks on the Mill Pond"}}
  }
%}