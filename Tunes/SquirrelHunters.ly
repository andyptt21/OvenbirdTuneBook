\version "2.18.0"

SHChords = \chordmode{a1 s g s
		      a s g d d
		      a1 s g s
		      a s g d d}

SH = \relative{
  \key d \major
      %% A section
  \repeat volta 2{
    e''4. d8 b4 b8 d
    e fis e d b4 b8 a
    g a b cis d4 b8 cis
    d b cis a b cis d dis
    e4. d8 b4 b8 d
    e fis e d b4 b8 a
    g a b cis d4 b
  }
  \alternative{
    {a1}
    {a2. e'4~}
  }
  \break
  %% B section
  \repeat volta 2{
    e8 d e g a4 a8 g
    e8 d e fis g4 b,8 a
    g a b cis d4 b8 cis
    d b cis a b cis d dis
    e8 d e g a b a g
    e8 d e fis g4 b,8 a
    g a b cis d a b4
  }
  \alternative{
    {a2. e'4}
    {a,1}
  }
}

%{
  \score {
  <<
  \new ChordNames \SHChords 
  \new Staff { \clef treble \SH }
  >>
  \header { piece = \markup {\fontsize #4.0 "Squirrel Hunters"}}
  }
%}