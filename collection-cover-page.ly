\version "2.18.0"

\header {
  tagline = ""
}

\paper {
  print-page-number = #ff
}

\markup {
  \sans
  \fill-line {
    \center-column {

      \vspace #7

      \fontsize #12 "The Ovenbird"

      \vspace #4

      \fontsize #12 "Tune Collection"

      \vspace #4

      \epsfile #X #60 #"oven-bird.eps"

      \vspace #4

      \fontsize #6 "A companion to the YFN collection"

      \vspace #3

      \fontsize #2
      \with-url #"http://lilypond.org"
      "Music Engraving by LilyPond 2.18 - www.lilypond.org"

    }
  }
}