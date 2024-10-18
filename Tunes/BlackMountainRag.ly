\version "2.18.0"

BMRChords = \chordmode{a1 s s e2 a
			 a1 s s e2 a
			 a1 a:7 d d:7
			 a s  e s
			 a1 a:7 d d:7
			 a e  a2 e2 a1
		       }

BMR = \relative{
  \key a \major
  \repeat volta 2{
    %% A section
    cis''8 cis fis cis e fis e bis
    cis cis  fis cis e4 e8 bis
    cis cis fis cis e fis e bis
    cis a fis e fis a a bis
  }
  \repeat volta 2{
    %% B section
    cis4 a cis a
    cis a fis a
    cis a cis a
    e'8 fis e d cis b a4
  }
  \break
  %% C section
  a2 a8 b bis4
  cis a b cis
  d2 d4 e
  fis2 e8 d4.
  cis2 e
  cis4 cis b a
  b2 gis
  e fis4 gis
  %% Fast C part
  a8 gis a b cis b cis d
  e fis e d cis b a4
  d8 cis d e fis e fis g
  a b a g fis e d4
  a'8 gis fis a gis fis e4
  b8 cis d cis b a gis4 
  a4 e'8 fis e d cis b 
  a1
  
}

%{
  \score {
  <<
  \new ChordNames \BMRChords 
  \new Staff { \clef treble \BMR }
  >>
  \header { piece = \markup {\fontsize #4.0 "Black Mountain Rag"}}
  }
%}