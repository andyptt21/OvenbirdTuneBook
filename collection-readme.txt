Your Friends and Neighbors Tune Collection
Documentation for LilyPond source files
March 6, 2014
Paul Morris

---------------------------------------
TO CREATE PDFS OF THE FIVE VERSIONS OF THE COLLECTION

Make sure all the files are in the same directory.  Then render the "collection-main.ly" file using LilyPond 2.18.2 or later.  (I recommend using Frescobaldi as the best way to work with LilyPond.)  LilyPond will automatically generate the five PDF files in that same directory.  They are about a megabyte each.  This will take some time.  It took about 13 minutes on my computer to create all five files.


---------------------------------------
THE FILES

Here is some more information about the LilyPond files and how things are set up.  There are also comments in the "collection-main.ly" file to help describe what's going on.  These are the files:

  collection-main.ly
  collection-tune-pages.ly
  collection-index-page.ly
  collection-cover-page.ly
  collection-cover-page-barcode-image.eps
  (also numerous single tune files, and "clairnote" files that can be ignored)


collection-main.ly
The "collection-main.ly" file is the main file that brings everything together in one collection and produces five different versions of it (treble, bass, alto clef, plus B-flat and F instruments), one PDF file for each version.  It contains a fuction (makeScore) for creating the \score block for each tune, global page settings, code that includes all the individual tune files, and finally code to output the five different versions of the collection, each with its own settings for clef, transposition, etc.


single tune files
The individual tunes are stored in files named like: "YFN_BayOfFundy.ly"  They  contain two variables each, one that contains the melody and another that contains the chords for that tune.  Each tune file is included (i.e. \include "...") in the "collection-main.ly" file which makes these variables accessible within that file.  The variables are used in the "collection-tune-pages.ly" file like this: "\BayOfFundy" and "\BayOfFundyChords". Each tune file also contains a score block that is commented out.  To edit and proofread a single tune you can un-comment this score block.  When you're done, comment it out again. 

Why are these score blocks commented out?  In order to be able to change things like the clef and transposition (for each of the different versions of the collection), we don't use this score block in the individual tune files. This is why it is commented out. Instead the score blocks that are used are generated dynamically by a function at the top of the "collection-main.ly" file called "makeScore."  


collection-tune-pages.ly
The "collection-tune-pages.ly" file contains a series of \bookpart blocks, one for each page of the collection.  Each \bookpart has its own header that stores a "manual-page-number" (a custom field).  This lets us assign page numbers like R3 and J1 to the supplement pages.  In each of those \bookpart blocks the |\makeScore" function is called for each tune, the arguments sent to the function are that tune's melody, chords, title, and composer (if there is one, if there is no composer an empty string ("") is used instead).  The "collection-tune-pages.ly" file is included at the bottom of the "collection-main.ly" file, once for each version of the collection.


collection-index-page.ly and collection-cover-page.ly
There is a "collection-cover-page.ly" and "collection-index-page.ly" for each of these pages and they are included in the "collection-main.ly" file.  The "collection-cover-page-barcode-image.eps" is the barcode image found on the cover page. 

