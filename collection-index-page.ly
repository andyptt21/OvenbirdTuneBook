\version "2.18.0"

% Column alignment function
% "Aligning columns from different markups"
% source: LilyPond Snippet Repository
% http://lsr.di.unimi.it/LSR/Item?id=464

#(define-markup-command (columns layout props args) (markup-list?)
   (let ((line-width (/ (chain-assoc-get 'line-width props
                          (ly:output-def-lookup layout 'line-width))
                       (max (length args) 1))))
     (interpret-markup layout props
       (make-line-markup (map (lambda (line)
                                (markup #:pad-to-box `(0 . ,line-width) '(0 . 0)
                                  #:override `(line-width . ,line-width)
                                  line))
                           args)))))

\header {
  tagline = ""
}

% #(set-default-paper-size "letter")

% change baseline-skip value to alter the distance between each line

\markup \override #'(baseline-skip . 2.2) \tiny \columns {
  \column {
    "Big Rock Candy Mountain"
    "The Blackest Crow"
    "Black Mountain Rag "
    "Cattle in the Cane "
    "The Corner Post "
    "Cripple Creek "
    "Ducks on the Mill Pond "
    "Dull Chisel "
    "Farewell to Walley Range"
    "Footprints in the Snow"
    "Jack A Roe "
    "Jimmy Johnson "
    "Squirrel Hunters "
    "Swanee River "
    "The Rocky Road to Dublin "
    "The Woodcock Waltz "
  }
  \column {
  }
  \column {
  }
}