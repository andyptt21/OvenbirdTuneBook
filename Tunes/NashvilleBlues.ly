\version "2.18.0"

NBChords = \chordmode{
  d1:m s s s
  s s a s
  d:m s s s
  s s s d
  d:m a d:m s 
}

NB = \relative{
  \key d \minor
  \time 2/2
  \repeat volta 2{
    d''4 d2 d4
    c2 d
    a g4 f
    d1
    d'4 d2 d4
    c2 d
    a2 g4 f
    a2 g4 f
    d'4 d2 d4
    c2 d
    a g4 f
    d1
    a'4 a2 g4
    f2 g4 f
    d1
    fis1
    a4 a2 g4
    f2 g4 f
    d1~
    d
  }
}


%{
  \score {
  <<
  \new ChordNames \NBChords 
  \new Staff { \clef treble \NB }
  >>
  \header { piece = \markup {\fontsize #4.0 "Nashville Blues"}}
  }
%}