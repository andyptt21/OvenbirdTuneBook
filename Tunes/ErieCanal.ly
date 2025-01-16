\version "2.18.0"

ECChords = \chordmode{
  s4
  e2:m g d e:m b1 s2 e:m b2 e:m
  g1 s2 d e1:m s2 b
  e2:m g d e:m b1 s2 e:m d1
  g1 s2 d g1 s4 d e2:m
  s g d e:m b1 s2 e:m
}

EC = \relative{
  \key e \minor
  \partial 4 b'4
  \repeat volta 2{
    %% A section
    e,8 e4 g4. g8 g
    a8 a4 b4.~ b4
    b4 b b b
}
  \alternative {
    {b8 a g e~ e4 b'8 g}
    {b8 a g e~ e4 b'4}
  }

  \break
  d b d b
  d8 b4 a8~ a2
  b4 g b g
  b8 g4 fis8~ fis4 b4
  e,4 e g g 
  a8 a4 b4.~ b4
  b4 b b b
  b8 a g e~ e2
  d1
  \break
  b'4. b8~ b2
  b8 b b g a2
  b4. b8~ b4 g8 a
  b g a fis g4 b8 g
  e4 e g g
  a8 a4 b4.~ b4
  b b b b
  b8 a g e~ e2
}

%{
  \score {
  <<
  \new ChordNames \ECChords 
  \new Staff { \clef treble \EC }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Erie Canal"}}
  }
%}