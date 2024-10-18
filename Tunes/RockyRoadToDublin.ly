\version "2.18.0"

RRTDChords = \chordmode{
  a1 s c s
  a s s s
  a s s s
  a s s s
  a c a c2 a2
}

RRTD = \relative{
  \key d \major
  \repeat volta 2{
    %% A section
    e'''4 e cis a
    a8 b a g e4 d
    c8 d e f g e g e
    c d e f g4 e'4
    e e cis a
    a8 b a g e d e g
    a4 a b8 a b d
    cis8 a a g a2
  }
  \break
  \repeat volta 2{
    %% B section
    e8 d e g a b a g
    e d e g a4 e
    e8 d e fis g fis g fis
    e d e fis g4 e
    e8 d e g a b a g
    e d e g a4 e
    e8 d e fis g fis e d
    cis4 a a e 
  }
  \break
  \repeat volta 4{
    %% C section
    a4 a a8 b c e
    g4 g e8 d c4
    a4 a4.  d8 e d
    e a4 g8 a2
  }
}

%{
  \score {
  <<
  \new ChordNames \RRTDChords 
  \new Staff { \clef treble \RRTD }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Rocky Road to Dublin"}}
  }
%}