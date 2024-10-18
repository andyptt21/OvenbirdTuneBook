\version "2.18.0"

FWRChords = \chordmode{
  fis4.:m s s s s s
  e4. s s s s s s s s
  fis4.:m s s s s s
  e4. s s s s s s s s
}

FWR = \relative{
  \key fis \minor
  \time 9/8
      %% A section
  \repeat volta 2{
    fis'4 cis'8 b a fis fis4 e8
    fis4 cis'8 b a fis fis' e cis
    b4 b8 b a b cis4 a8
  }
  \alternative{
    {b4 b8 b a b c b a}
    {b4 b8 b a b cis e fis}
  }
  
  \break
  %% B section
  \repeat volta 2{
    a4 a8 fis e cis fis e cis
    b4 b8 b a b cis e fis
    a4 fis8 b a fis a fis e

  }
  \alternative{
    {fis e cis b a b cis e fis}
    {fis e cis b a b c b a}
  }
}

%{
  \score {
  <<
  \new ChordNames \FWRChords 
  \new Staff { \clef treble \FWR }
  >>
  \header { piece = \markup {\fontsize #4.0 "Farewell to Walley Range"}}
  }
%}