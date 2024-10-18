\version "2.18.0"

CCChords = \chordmode{
  s4
  a1 d2 a s1 e2 a
  a1 d2 a s1 e2 a e2 a
  a1 d a e2 a
  a1 d a e2 a e2 a
}

CC = \relative{
  \key a \major
  \partial 4 \tuplet 3/2 {e''8 fis gis}
  \repeat volta 2{
    a b a fis a e cis a
    d4 fis e \tuplet 3/2 {e8 fis gis}
    a b a fis a e cis a
    e fis b gis a4 \tuplet 3/2 {e'8 fis gis}
    a b a fis a e cis a
    d4 fis e \tuplet 3/2 {a8 gis fis}
    e cis a cis b a fis4 
  }
    \alternative {
      {e8 fis b gis a4 \tuplet 3/2 {e'8 fis gis}}
      {e,8 fis b gis a4 a8 b}
  }
  
  \break
  
  \repeat volta 2{
    cis4 r cis8 b a b
    cis4 r a4 a8 b
    cis4 r cis8 b a b
    cis b a b a4 a8 b
    cis4 r cis8 b a b
    cis4 r a4 a8 b
    cis4 r cis8 b a fis
  }
  \alternative {
    {e fis a gis a4 a8 b}
    {e, fis a gis a4 \tuplet 3/2 {e'8 fis gis}}
  }
  
}


%{
  \score {
  <<
  \new ChordNames \CCChords 
  \new Staff { \clef treble \CC }
  >>
  \header { piece = \markup {\fontsize #4.0 "Cripple Creek"}}
  }
%}