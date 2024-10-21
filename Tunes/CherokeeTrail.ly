\version "2.18.0"

CTChords = \chordmode{
  s2
  c1 s g s
  c s g e:m
  d s e:m s
  d s e:m s s

}

CT = \relative{
  \key e \minor
  \partial 2 b'4 d
  \bar ".|"
  e2 e4. g8
  e4 d b8 a g4
  b d b8 a g4
  b d b d
  \break
  e2 e4. g8
  e4 d b8 a g4
  b d b8 a g4
  e2 e4 b'
  \break
  \repeat volta 2{
    a2 a4. b8
    a4 g e d
    e2~ e8 d e g 
    e2 e4 b'
    \break
    a2 a4. b8
    a4 g e d
    e1~
    
  }
  \alternative{
    {e2 e4  b'}
    {e,2 b'4 d}
  }
}

%{
  \score {
  <<
  \new ChordNames \CTChords 
  \new Staff { \clef treble \CT }
  >>
  \header { piece = \markup {\fontsize #4.0 "Cherokee Trail"}}
  }
%}