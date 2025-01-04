\version "2.19.2"

% SCORE GENERATING FUNCTION
% custom function that generates the \score for each tune
% takes 4 arguments: chords, melody, title, composer
% uses variables \fromPitch and \toPitch for transposing
% uses variable \clefName to set the clef
% uses \postTitleText for adding text after the title
% dynamically generating the scores allows creation of
% different versions of the collection

makeScore =
#(define-scheme-function
  (parser location chords melody title composer)
  (ly:music? ly:music? string? string?)
  #{
    \score {
      <<
        \new ChordNames {
          \transpose \fromPitch \toPitch
          #chords
        }
        \new Staff {
          \clef \clefName
          \transpose \fromPitch \toPitch
          #melody
        }
      >>
      \header {
        piece = \markup {
          \fontsize #3 #title
          % optionally adds text after each tune's title:
          \fontsize #1 \postTitleText
        }
        opus = \markup {
          \fontsize #3 #composer
        }
      }
    }
  #})


%% GLOBAL DOCUMENT SETTINGS

\pointAndClickOff

\layout {
  indent = 0 \mm
  \override Score.BarNumber.break-visibility = #all-invisible
}

#(set-default-paper-size "letter")

\paper {
  % A4/Letter page margins code
  % A4: 210 x 297 mm
  % USletter: 215.9 x 279.4 mm
  % => Difference: letter is 5.9mm wider, A4 is 17.6mm taller
  min-vertical-margins = 10 \mm
  min-horizontal-margins = 10 \mm

  #(define is-letter? (= paper-width (* 8.5 in)))
  % VERTICAL
  % a4 needs an extra 8.8mm on both sides (top and bottom)
  #(define (letter-margin-height min-margin)
     (if is-letter?
         (+ min-margin (* 0 mm))
         (+ min-margin (* 8.8 mm))))
  top-margin = #(letter-margin-height min-vertical-margins)
  bottom-margin = #(letter-margin-height min-vertical-margins)

  % HORIZONTAL
  % letter needs an extra 2.95mm on both sides (left and right)
  #(define (letter-margin-width min-margin)
     (if is-letter?
         (+ min-margin (* 2.95 mm))
         (+ min-margin (* 0 mm))))
  left-margin = #(letter-margin-width min-horizontal-margins)
  right-margin = #(letter-margin-width min-horizontal-margins)
  line-width = #(- paper-width (+ left-margin right-margin))
  % END A4/Letter page margins code


  ragged-bottom = ##t
  page-breaking = #ly:minimal-breaking
  % first-page-number = -1
  % print-first-page-number = ##f

  % put page number in footer and centered
  print-page-number = ##f
  oddHeaderMarkup = \markup \null
  evenHeaderMarkup = \markup \null
  oddFooterMarkup = \markup {
    \fontsize #3.0
    \fill-line {
      % commented code is for adding default automatic page numbers
      % \concat {
      \fromproperty #'header:manual-page-number
      % " - "
      % \on-the-fly \print-page-number-check-first
      % \fromproperty #'page:page-number-string
      % }
    }
  }
  evenFooterMarkup = \oddFooterMarkup
}



% INCLUDE ALL THE TUNE FILES
% These contain the variables that contain the melodies and chords for each tune.
% Including the files here makes these variables accessible for output below.

\include "Tunes/BlackestCrow.ly"
\include "Tunes/BlackestCrowSimple.ly"
\include "Tunes/BigRockCandyMountain.ly"
\include "Tunes/BlackMountainRag.ly"
\include "Tunes/CattleInTheCane.ly"
\include "Tunes/CherokeeTrail.ly"
\include "Tunes/ClinchMountainBackstep.ly"
\include "Tunes/CornerPost.ly"
\include "Tunes/CrippleCreek.ly"
\include "Tunes/DucksOntheMillpond.ly"
\include "Tunes/DullChisel.ly"
\include "Tunes/ErieCanal.ly"
\include "Tunes/FarewellToWalleyRange.ly"
\include "Tunes/FootprintsInTheSnow.ly"
\include "Tunes/JackARoe.ly"
\include "Tunes/JimmyJohnson.ly"
\include "Tunes/LittlePineSiskin.ly"
\include "Tunes/LonesomeBanjo.ly"
\include "Tunes/NashvilleBlues.ly"
\include "Tunes/SallyGoodin.ly"
\include "Tunes/SallyInTheGarden.ly"
\include "Tunes/SquirrelHunters.ly"
\include "Tunes/SwaneeRiver.ly"
\include "Tunes/RockyRoadToDublin.ly"
\include "Tunes/WoodcockWaltz.ly"




% OUTPUT THE FIVE DIFFERENT VERSIONS
% each gets its own settings (clefName etc.) that are
% used in the makeScore function above


% STANDARD TREBLE CLEF VERSION
clefName = "treble"
fromPitch = c
toPitch = c
postTitleText = ""

\book {
  % Specify the name of the output file (the PDF file):
  \bookOutputName "CI-collection-treble-clef"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}



% BASS CLEF VERSION
clefName = "bass"
fromPitch = c
toPitch = c,,
postTitleText = ""

\book {
  \bookOutputName "CI-collection-bass-clef"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}

%{

% ALTO CLEF VERSION
clefName = "alto"
fromPitch = c
toPitch = c,
postTitleText = ""

\book {
  \bookOutputName "CI-collection-alto-clef"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}


% B-FLAT INSTRUMENT VERSION
clefName = "treble"
fromPitch = bes,
toPitch = c
postTitleText = " (B-flat instrument)"

\book {
  \bookOutputName "CI-collection-B-flat-instrument"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}


% F INSTRUMENT VERSION
clefName = "treble"
fromPitch = f
toPitch = c
postTitleText = " (F instrument)"

\book {
  \bookOutputName "CI-collection-F-instrument"
  \include "collection-cover-page.ly"
  \pageBreak
  \include "collection-index-page.ly"
  \pageBreak
  \include "collection-tune-pages.ly"
}

%}