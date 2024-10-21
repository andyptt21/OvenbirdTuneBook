\version "2.18.0"

JJChords = \chordmode{
  a4
  s1 s s e2 a2 e2 a2
  a1 s s e2 a2 e2 a2
  s1 s s e2 a2 e2 a2
  a1 d2 a2 s1 e1
  a1 d2 a2 s1 e2 a2
}

JJ = \relative{
  \key a \major
  \partial 4 e''4~
  \repeat volta 2{
    e8 fis e d cis4 cis8 b
    a cis b a  \glissando cis4 e~
    e8 fis8 e8 d cis b cis8 d
    
  }
    \alternative {
    {e8 cis b4 a e'}
    {e8 cis b4 a \tuplet 3/2 {e8 fis gis}}
  }
  
  \break
  
  \repeat volta 2{
    a4 a cis cis
    a8 cis b a \glissando cis4 \tuplet 3/2 {e,8 fis gis}
    a4 b cis cis8 d
  }
  \alternative {
    {e8 cis b4 a \tuplet 3/2 {e8 fis gis}}
    {e'8 cis b4 a e'}
  }
  \break

  \repeat volta 2{
    e8 fis e d cis4 cis8 b
    a cis b a  \glissando cis4 e~
    e8 fis8 e8 d cis b cis8 d
    
  }
    \alternative {
    {e8 cis b4 a e'}
    {e8 cis b4 a4 a'~}
  }
  \break
  
  \repeat volta 2{
    a a a a
    fis8 gis a fis e4 cis
    e8 fis e d cis4 cis8 b
    a cis b a \glissando cis4 e
    a a a a
    fis8 gis a fis e4 cis
    e8 fis e d cis4 cis8 d
    e cis b4 a e'
  }
  
}


%{
  \score {
  <<
  \new ChordNames \JJChords 
  \new Staff { \clef treble \JJ }
  >>
  \header { piece = \markup {\fontsize #4.0 "Jimmy Johnson"}}
  }
%}