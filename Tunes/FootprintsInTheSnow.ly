\version "2.18.0"

FITSChords = \chordmode{d1 s d:7 g
			a s s d d s
			d s a s
			s s d s
			d1 s d:7 g
			a s d s}

FITS = \relative{
  \key d \major
  %% A section
  \repeat volta 2{
    d'8 d d4 fis a
    d d fis2
    e4. fis8 e4 d4
    b1
    a8 a a2 a4
    cis b a2
  }
  \alternative{
    {a4. b8 a4 g
      fis2. e4}
    {d'4. b8 a4 fis
   d2. a'4~}
  }
  \break
  %% B section
  a a2 a4
  b a g fis
  e1~
  e2. a4~
  a a2 a4
  cis b a g 
  fis1~
  fis2. d4~
  d8 d d4 fis a
  d d fis2
  e4. fis8 e4 d4
  b1
  a8 a a2 a4
  cis b a cis
  d4. b8 a4 fis
  d1
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