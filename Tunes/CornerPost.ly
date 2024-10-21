\version "2.18.0"

CPChords = \chordmode{
  s2
  bes1 s s g:m
  f s2 d:m s1 g:m s
  g:m s s f
  s d:m s g:m g:m
}

CP = \relative{
  \key g \minor
  %% Corner Post
  \partial 2 g'8 a bes c 
  \repeat volta 2{
    %% A section
    d2 d8 f4 d8~
    d c bes c d4. c8
    d f d c bes c d f
    \break
    g2. f4
    d4. d8 c4. c8
    \tuplet 3/2 {g a g} f4 d4. f8
    g a c d c a g4 }
  \alternative {
    { g2~ g8 a bes c }
    { g2. a4}
  }

  \break
  \repeat volta 2{
    %% B section
    bes8 bes4 bes8 bes a g a
    bes8 bes4 bes8 bes a g a
    bes8 bes4 c bes c8 
    a2. g4
    \break
    a4. a8 a8
    <<
      {
        \voiceOne
        a4.
	a4 a2.
      }
      \new Voice {
        \voiceTwo
	f4.
	d4 d2.
      }
    >>
    \oneVoice
    bes'4. bes8 \tuplet 3/2 {a bes a} g4 }
  \alternative {
    { g2~ g8 f8 g a }
    { g2~ g8 a bes d}
  }
}

%{
  \score {
  <<
  \new ChordNames \CPChords 
  \new Staff { \clef treble \CP }
  >>
  \header { piece = \markup {\fontsize #4.0 "The Corner Post"}}
  }
%}