\version "2.18.0"


JARChords = \chordmode{
  a1:m c c e e
  a:m c f c c
  a:m e a:m a:m a:m a:m
  
}

JAR = \relative{
  \key a \minor
  a'4 a c d
  e e d e
  g g e d
  e1~
  e1
  e4 e d c
  a2 g4 a
  c c a f
  g1~
  g1
  a1
  gis4. e4. gis4
  a1~
  a2 e'8 dis d c
  a1~
  a1
}

%{
  \score {
  <<
  \new ChordNames \JARChords 
  \new Staff { \clef treble \JAR }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jack A Roe"}}
  }
%}
