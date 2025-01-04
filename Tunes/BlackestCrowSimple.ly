\version "2.18.0"

BCSChords = \chordmode{
  s4
  d2. s g s s s e:m s s s
  g s s s e:m d e:m s 
  d s g s s s e:m s
}


BCS = \relative{
  \key e \minor
  \time 3/4
  \partial 4 b'4
  \repeat volta 2 {
    a2 g4 e2 d4
    g2 a4 b2 d4
    b2 a4 g2 d4
  }
  \alternative{
    {e2.~ e2 b'4}
    {e,2.~ e2 d4}
  }
  \break
  g2 g4 g a b
  d2 d4 b2 d4
  e2 fis4 d2 e4
  b2.~ b2 b4
  \break
  a2 g4 e2 d4
  g2 a4 b2 d4
  b2 a4 g2 d4
  e2.~ e2 b'4
}

%{
  \score {
  <<
  \new ChordNames \BCSChords 
  \new Staff { \clef treble \BCS }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Blackest Crow (Simplified)"}}
  }
%}