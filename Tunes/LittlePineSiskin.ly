\version "2.18.0"

LPSChords = \chordmode{
  s4
  d1 a
  d g
  d s
  s2 a2  b1:m d
  g s2 d
  g1 d d
  e:m s2 b:m
  e1:m b:m b:m
  
}

LPS = \relative{
  \key d \major
  \partial 4 a'8 b
  \repeat volta 2{
    d cis d e fis e d fis
    e2. d8 e8
    fis d fis a d4 cis
    b2.  b4~
    b8 a b cis d4 d8 cis
    b a fis e d4 a8 b
    d4 e8 fis d4 cis
      
  }
  \alternative{
    {b2. a8 b }
    {d4. d8 d e fis a }
  }
  \break
  \repeat volta 2{
    b2 b8 d4 d8
    b a fis4 a4. a8
    b4 d b8 a fis4    
  }
  \alternative{
    {a2~ a8 d, fis a }
    {a4. b8 a fis e d}
  }
  \repeat volta 2{
    e2 e4. fis8
    e d b4 a4. d8
    e4 fis e8 d b4
  }
  \alternative{
    {a2~ a8 a b d}
    {d2~ d8 b a b}
  }
}

%{
  \score {
  <<
  \new ChordNames \LPSChords 
  \new Staff { \clef treble \LPS }
  >>
  \header { piece = \markup {\fontsize #4.0 "Little Pine Siskin"}}
  }
%}