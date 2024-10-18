\version "2.18.0"

FITSChords = \chordmode{}

FITS = \relative{
  \key d \major
  %% A section
  \repeat volta 2{

  }
  \alternative{

  }
  \break
  %% B section
  \repeat volta 2{

  }
  \alternative{

  }
}

%{
  \score {
  <<
  \new ChordNames \FITSChords 
  \new Staff { \clef treble \FITS }
  >>
  \header { piece = \markup {\fontsize #4.0 "Footprints in the Snow"}}
  }
%}