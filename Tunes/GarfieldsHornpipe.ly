\version "2.18.0"

PGHChords = \chordmode{
  bes1 s f s
  bes s f bes bes
  ees bes f:7 bes
  ees bes f bes
}

PGH = \relative{
  \key bes \major
  \repeat volta 2{
    bes'8 f d f bes f d f
    bes a bes c d c d ees
    f c a c f c a c
    f e f g f ees d c
    bes8 f d f bes f d f
    bes a bes c d c d ees
    f g a g f ees d c
  }
  \alternative {
    {bes4 d bes d8 c}
    {bes4 d bes bes'8 a}
  }
  
  \break
  
  \repeat volta 2{
    g ees bes g ees g bes g'
    f d bes f d f bes f'
    ees a, g' f ees a, g' f
    d bes g' f d bes bes' a
    g ees bes g ees g bes g'
    f d bes f d f bes f'
    e f a g f ees d c
  }
  \alternative {
    {bes4 d bes bes'8 a}
    {bes,4 d bes d8 c}    
  }
}

%{
  \score {
  <<
  \new ChordNames \PGHChords 
  \new Staff { \clef treble \PGH }
  >>
  \header { piece = \markup {\fontsize #4.0 "President Garfield's Hornpipe"}}
  }
%}