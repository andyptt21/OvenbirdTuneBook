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
  tagline = "Tunes with optional weblinks"
}

% #(set-default-paper-size "letter")

% change baseline-skip value to alter the distance between each line

\markup \override #'(baseline-skip . 4.4) \tiny
\columns {
  \column {
    \fontsize #6 "Tune index with optional weblinks"
    \bold "[1] Big Rock Candy Mountain"
    \bold "[1] The Blackest Crow"
    \italic "https://www.youtube.com/watch?v=4cYdD8Trv9A"
    \bold "[1] The Blackest Crow (Simplified)"
    \bold "[2] Black Mountain Rag "
    \italic "https://www.youtube.com/watch?v=C81Vo3HxJts"
    \bold "[2] Cattle in the Cane "
    \italic "https://www.youtube.com/watch?v=-6VeyJxzXyM"
    \bold "[3] Cherokee Trail "
    \italic "https://www.youtube.com/watch?v=8F1UZQcIles"
    \bold "[3] Clinch Mountain Backstep "
    \italic "https://www.youtube.com/watch?v=FlGgoXTGP1Q"
    \bold "[4] The Corner Post "
    \italic "https://www.youtube.com/watch?v=MSOwdKrWhxI"
    \bold "[4] Cripple Creek "
    \italic "https://www.youtube.com/watch?v=aNhsa8nR3so"
    \bold "[5] Ducks on the Mill Pond "
    \italic "https://www.youtube.com/watch?v=2lksDQbPMqc"
    \bold "[5] Dull Chisel "
    \bold "[5] The Erie Canal"
    \bold "[6] Farewell to Whalley Range "
    \italic "https://www.youtube.com/watch?v=04wHatzmVsQ"
    \bold "[6] Footprints in the Snow "
    \italic "https://www.youtube.com/watch?v=2aDZGenlXfU"
    \bold "[6] Jack A Roe "
    \bold "[7] Jimmy Johnson "
    \italic "https://www.youtube.com/watch?v=i3NEdCcy4NA"
    \bold "[7] Little Pine Siskin"
    \italic "https://www.youtube.com/watch?v=6JMHYfFfnfU"
  }
  \column {
    " "
    \bold "[8] Lonesome Banjo"
    \italic "https://www.youtube.com/watch?v=sjMUDP-bjrQ"
    \bold "[8] Nashville Blues"
    \italic "https://www.youtube.com/watch?v=XAN8Qr6RzPU"
    \bold "[9] Sally Goodin "
    \italic "https://www.youtube.com/watch?v=1WzkUAm-ciQ"
    \bold "[9] Sally in the Garden "
    \italic "https://www.youtube.com/watch?v=WWIfFIEeZjw"
    \bold "[10] Squirrel Hunters "
    \italic "https://www.youtube.com/watch?v=ojrbbYPC4lY"
    \bold "[10] Swanee River "
    \bold "[11] The Rocky Road to Dublin "
    \italic "https://www.youtube.com/watch?v=M0_KC2prUqo"
    \bold "[11] The Woodcock Waltz "
  }
}