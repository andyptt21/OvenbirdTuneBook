\version "2.18.0"

LBChords = \chordmode{
  s2
  g1:5 s s s
  s s s d:5
  g1:5 s s s
  s s s d:5
}

LB = \relative{
  \key g \major
  \time 4/4
  \partial 2
  d'4 f
  \repeat volta 2{
    g g2 bes4
    g f g bes
    d d2 f4
    d8 c bes4 g f
    \break
    g g2 bes4
    g f g bes
    g g2 f4
    d2 d4 f
    \break
    g g2 bes4
    g f g bes
    d d2 f4
    d8 c bes4 g f
    \break
    g g2 f4
    d2 d4 f
    g g2 f4
    g2 d4 f
  }
  
}


%{
  \score {
  <<
  \new ChordNames \LBChords 
  \new Staff { \clef treble \LB }
  >>
  \header { piece = \markup {\fontsize #4.0 "Lonesome Banjo"}}
  }
%}