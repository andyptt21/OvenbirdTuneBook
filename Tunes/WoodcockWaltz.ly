\version "2.18.0"

WWChords = \chordmode{
  %% A section
  \repeat volta 2 {
    c2. s s s2 c4:7
    f2. s s s
    g s s s
    c s g c
  }
  %% B section
  \repeat volta 2 {
    e e:7 a:m s
    d s g f
  }
}


WW = \relative{
  \key c \major
  \time 3/4
  \repeat volta 2 {
    %% A section
    c''8 d e g a4
    c8 a g e d4
    c2.~
    c2 bes4
    a8 gis a c d4
    f8 d c4 a4
    f2.~
    f2.
    bes8 b d b a4
    g2.
    bes8 b d b a4
    g a b
    c g' a
    \appoggiatura a16 bes4 a g
    g \appoggiatura d16 ees4 d
    c2.^"Fine"
  }
  \repeat volta 2 {
    gis8 a b a gis4
    gis8 b d gis, b d
    e8 a, d c a4
    e'8 a, d8 c a4
    bes8 b d bes b4
    a4 e' fis
    g2.
    f2.
  }
}

%{
  \score {
  <<
  \new ChordNames \WWChords 
  \new Staff { \clef treble \WW }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Woodcock Waltz"}}
  }
%}