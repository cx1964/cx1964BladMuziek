\version "2.24.2"

\header {
  title = "Cantus Firmus in A Major"
  composer = "Your Name"
}

\score {
  \new Staff \relative c' {
    \clef treble
    \key a \major
    \time 4/4
    a4 b cis d | e4 fis gis a |
    a4 gis fis e | d4 cis b a |
  }
  \layout { }
  \midi { }
}
