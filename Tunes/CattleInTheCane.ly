\version "2.18.0"

CITCChords = \chordmode{a1 s g s
			a s g e2 a
			a1:m s c s
			a:m s c e2 a:m
		       }

CITC = \relative{
  \key a \major
  \repeat volta 2{
    %% A section
    \appoggiatura c''16 cis8 e4 fis8 e d cis d
    e fis e d cis b a4
    b8 g a b d e d b
    g b e b d4 d
    \appoggiatura c16 cis8 e4 fis8 e d cis d
    e fis e d cis d e fis
    g fis e d \appoggiatura d16 cis8 b a fis
    e fis a b a2
  }
  \break
  \key a \minor
  %% B section
  \repeat volta 2{
    a'4 a4 a,4 a8 b
    c e d c a4 c8 a
    g e d dis e g a b
    c b c d e d e g
    a4 a4 a,4 a8 b
    c e d c a4 c8 a
    g e d dis e g a c
    b a gis4 a2
  }  
}

%{
  \score {
  <<
  \new ChordNames \CITCChords 
  \new Staff { \clef treble \CITC }
  >>
  \header { piece = \markup {\fontsize #4.0 "Cattle in the Cane"}}
  }
%}