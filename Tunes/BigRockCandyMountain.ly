\version "2.18.0"

BRCMChords = \chordmode{
  a4
  a1 a:7 d a d a s e
  a1 a:7 d a d2 a d a d a d a e1:7 a1
}

BRCM = \relative{
  \key a \major
  \partial 4 cis''8 b
  \repeat volta 2{
    a4 a a b
    cis e2 d8 e
    fis4 fis a a
    e2. e4
    \break
    fis fis a a
    e cis e4 e
    fis e d cis
    b2. cis8 b
    \break
    a4 a a b
    cis e2 d8 e
    fis4 fis a a
    e2. cis8 e
    fis4 fis e cis8 e
    \break
    fis4 fis e4. e8
    fis4 fis e cis8 e
    fis4 fis e4. e8
    e4 e e cis
    b a2 cis8 b
  }
}

%{
  \score {
  <<
  \new ChordNames \BRCMChords 
  \new Staff { \clef treble \BRCM }
  >>
  \header { piece = \markup {\fontsize #4.0 "Big Rock Candy Mountain"}}
  }
%}