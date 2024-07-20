\version "2.24.3"

\language "english"

\header {
  title = "Cantus Firmus in A Major"
  composer = "C.X. la Fontaine 20240719"
}

% Lily pond gebruikt Helmholtz notatie voor de octaaf aanduiding
% https://en.wikipedia.org/wiki/Helmholtz_pitch_notation

\score {
  \new Staff \relative c' {
    \clef treble
    \key a \major
    \time 4/4
    c-sharp     d        e       f-sharp \bar "|"  % M1 
    g-sharp     a        b       c-sharp \bar "|"  % M2 
    d           e        f-sharp e       \bar "|"  % M3
    d           c-sharp  b       c-sharp \bar "||" % M4
  }
  \layout { }
  \midi { }
}


%{
convert-ly (GNU LilyPond) 2.24.3  convert-ly: Processing `'...
Applying conversion:     The document has not been changed.
%}
