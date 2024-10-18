\version "2.18.0"

SRChords = \chordmode{
  g2 b:7
  e:m c
  g e:m
  a d
  g2 b:7
  e:m c
  g d
  g1 g
  d
  g
  c
  g2 d
  g b:7
  e:m c
  g d
  g1 g
}

SR = \relative{
  \key g \major
      %% A section
  \repeat volta 2{
    b'2 a8 a b a
    g4 g'4 e8 g4 e8
    d4 g, g8 g fis g
    a2. g8 a
    \break
    b2 a8 a b a
    g4 g'4 e8 g4 e8
    d4 b a8 a b a
  }
  \alternative{
    {g2~ g8 d e g}
    {g2. fis'8 g}
  }
  
  \break
  %% B section
  \repeat volta 2{
    a4. b8 a4 d,
    d d8 e d4 g
    g e c e
    d2~ d
    \break
    b2 a8 a b a
    g4 g'4 e8 g4 e8
    d4 b a8 a b a
  }
  \alternative{
    {g2. fis'8 g}
    {g,2~ g8 d e g}
  }
}

%{
  \score {
  <<
  \new ChordNames \SRChords 
  \new Staff { \clef treble \SR }
  >>
  \header { piece = \markup {\fontsize #4.0 "Swanee River"}}
  }
%}