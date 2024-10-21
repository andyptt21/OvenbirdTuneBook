\version "2.18.0"

BCChords = \chordmode{
  s4
  d2. s g s s s e:m s s s
  g s s s e:m d e:m s 
  d s g s s s e:m s
}


BC = \relative{
  \key e \minor
  \time 3/4
  \partial 4 b'4
  \repeat volta 2 {
    a4. b8  a g \tuplet 3/2 {e fis e} d4 e8 fis
    g4. g8 \tuplet 3/2 {bes a g} \glissando b2 d4 
    b4. b8  a4 \appoggiatura bes16 a4 g d
    
  }
  \alternative{
    {e4. d8 e fis \tuplet 3/2 {e fis e} d4 b'}
    {e,2.~ e2 d4}
  }
  \break
  g2 g4 g a b
  d2 d4 b2 d4
  e2 fis4 d2 e4
  b2~ b8 a bes a g d b' g
  \break
  a4. b8  a g \tuplet 3/2 {e fis e} d4 e8 fis
  g4. g8 \tuplet 3/2 {bes a g} \glissando b2 d4 
  b4. b8  a4 \appoggiatura bes16 a4 g d
  e2.~ e2 b'4
}

%{
  \score {
  <<
  \new ChordNames \BCChords 
  \new Staff { \clef treble \BC }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Blackest Crow"}}
  }
%}