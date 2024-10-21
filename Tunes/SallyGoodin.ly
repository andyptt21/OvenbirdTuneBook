\version "2.18.0"

SGChords = \chordmode{
  a1 s
  s e2 a2
  s1 s
  s  e2 a2 e2 a2
  s1 s
  s  e2 a2
  s1 s
  s  e2 a2
  s1 s
  s  e2 a2
  s1 s
  s  e2 a2
}

SG = \relative{
  \key a \major
  \repeat volta 2 {
    a'8 cis b cis a2~ a8 cis b a fis gis a b
    \glissando cis a b cis a cis b a fis e fis a b a a b
  }
  
  \break
  \repeat volta 2 {
    cis a cis d e cis e fis g b g fis e cis e gis
    a gis a4 cis, cis8 b 
  }
  \alternative{
    {a cis b a fis gis a b}
    {a cis b a fis gis a b'}
  }

  \break

  cis2 a~ a8 cis b a fis gis a b
  cis a b cis a cis b a fis e fis a b a a b
  cis2 a~ a8 cis b a fis gis a b
  cis a c b a cis b a fis e fis a b a a fis

  \break
  e cis a cis e4 e~ e8 fis e d cis a c b
  a cis e gis a b a fis e a fis gis a4 cis,8 d
  cis2. a'4~ a8 e8 gis fis e a, cis b
  a cis e gis a b a fis e a, fis gis a4 cis8 b
}


%{
  \score {
  <<
  \new ChordNames \SGChords 
  \new Staff { \clef treble \SG }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sally Goodin"}}
  }
%}