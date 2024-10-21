\version "2.18.0"

CMBChords = \chordmode{
  s4
  a1 s s e
  a s s2 e2 a1 a
  a s s s2 e1
  a s s2 e2 a1 a
}

CMB = \relative{
  \key d \major
  \partial 4 g''8 a8~
  \repeat volta 2{
    a a g4 e g
    e8 d c4 a g'8 a8~
    a a g4 e g
    e2. g8 a8~
    a a g4 e g
    e8 d c4 a c8 d
    e d c4 a g
  }
    \alternative {
      {a2. g'8 a8}
      {a,2 e8 g4.}
  }
  
  \break
  
  \repeat volta 2{
    a2 c4. d8
    e d c4 a g
    a2 a4. c8~
    \partial 2 c4 d4 
    e2. g8 a8~
    a a g4 e g
    e8 d c4 a c8 d
    e d c4 a g
  }
  \alternative {
    {a2 e8 g4.}
    {a2. g'8 a8~}
  }  
}


%{
  \score {
  <<
  \new ChordNames \CMBChords 
  \new Staff { \clef treble \CMB }
  >>
  \header { piece = \markup {\fontsize #4.0 "Clinch Mountain Backstep"}}
  }
%}