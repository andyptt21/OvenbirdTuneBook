\version "2.18.0"

CGChords = \chordmode{d1 s s a2 d
		      a2 d
		      d1 g d g d a2 d
		      d1 g d g d a2 d
		      }

CG = \relative{
  \key d \major
  %% A section
  \repeat volta 4{
    d'8 d d d fis4 e8 d
    fis4 a b a8 b
    d4 b a d,
  }
  \alternative{
    {e8 fis e4 d2}
    {e8 fis e4 d fis'~}
  }
  \break
  %% B section
  \repeat volta 2{
    fis8 fis fis4 e8 d b a
    b4 g'2.
    fis8 fis fis4 e8 d b a
    b4 g'2 a,8 b
    d4 b a d,
    e8 fis e4 d fis'~
    \break
    fis8 fis fis4 e8 d b a
    b4 g'2.
    fis8 fis fis4 e8 d b a
    b4 g'2 a8 b
    d4 b a d,
    e8 fis e4 d2
  }
}

%{
  \score {
  <<
  \new ChordNames \CGChords 
  \new Staff { \clef treble \CG }
  >>
  \header { piece = \markup {\fontsize #4.0 "Cumberland Gap"}}
  }
%}