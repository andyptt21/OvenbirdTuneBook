\version "2.18.0"

DCChords = \chordmode{a1 s e a
		      a1 s e a a:7
		      d a e2 e:7 a a:7
		      d1 a e a}

DC = \relative{
  \key a \major
      %% A section
  \repeat volta 2{
    a'4 a fis8 e fis gis
    a4 a cis e
    b4. c8 b a fis e
    a4 a fis8 e fis gis
    a4 a fis8 e fis gis
    a4 a cis e
    b4. c8 b a fis e
  }
  \alternative {
    {a2~ a8 e fis gis}
    {a2~ a8 e' fis e}
  }
  
  \break
  %% B section
  \repeat volta 2{
    a4 fis a d,
    e8 fis e d cis d e4
    b4. a8 gis4 b
    e8 fis e d cis2
    \break
    a'4 fis a d,
    e8 fis e d cis d e4
    b4. a8 gis4 b8 c
    cis a b4 a2
  }  
}

%{
  \score {
  <<
  \new ChordNames \DCChords 
  \new Staff { \clef treble \DC }
  >>
  \header { piece = \markup {\fontsize #4.0 "Dull Chisel"}}
  }
%}