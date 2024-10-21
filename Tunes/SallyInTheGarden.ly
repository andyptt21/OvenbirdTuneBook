\version "2.18.0"

SITGChords = \chordmode{
  c1:m s2 g:m
  c2.:m f4 bes1
  c:m s4 bes c2:m s1 s2 g:m c1:m c:m
  c:m s s s
  s s s1 s2 g c1:m c:m
}

SITG = \relative{
  \key c \minor
  \repeat volta 2{
    c''8 ees d c g2
    ees' d
    c8 ees d c g4 a
    bes1
    c8 ees d c g4 c
    ees f g2
    g4. aes8 g f ees d
    ees4 ees8  f ees d c bes
    
  }
    \alternative {
      {c2. g4}
      {c2. c8 d}
  }
  
  \break

  \repeat volta 2{
    ees4 c8 d ees d ees f
    g f d ees c4 c8 d
    ees4 c8 d ees d ees f
    g2. c,8 d
    ees4 c8 d ees d ees f
    g f d ees c4 g'
    g4. aes8 g f ees d
    ees4 ees8  f ees d c bes
  }
  \alternative {
    {c2. c8 d}
    {c2. g4}
  }  
}


%{
  \score {
  <<
  \new ChordNames \SITGChords 
  \new Staff { \clef treble \SITG }
  >>
  \header { piece = \markup {\fontsize #4.0 "Sally in the Garden"}}
  }
%}