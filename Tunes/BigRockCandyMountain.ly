\version "2.18.0"

BRCMChords = \chordmode{
  s4
  c1 c:7 f c f c s g
  c1 c:7 f c f2 c f c f c f c g1:7 c1
}

BRCM =
\transpose a c {
  \relative{
    \key a \major
    \partial 4 cis'''8 b
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