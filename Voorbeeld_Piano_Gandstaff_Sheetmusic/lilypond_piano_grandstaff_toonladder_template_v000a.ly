\version "2.24.3"
% file: lilypond_piano_grandstaff_toonladder_template_v000a.ly
% C.X. la Fontaine
% 20240125 

\pointAndClickOff

\language "english"  % letop tbv aanduiding s (=sharp) en f (=flat)

upper = 
          {
            \clef treble
            \key c \major
            \numericTimeSignature % zonder commentaar van dit command dan een time signature van x/y
                                  % met wordt breve of alla breve (c en c met streepje)
            \time 4/4
            \tempo "Adagio" 4 = 60

            % Haakje open voor begin m1 
            % en haakje sluiten na m4 zorgt voor een slur over m1 t/m m4
            %%\set fingeringOrientations = #'(left)
            \set fingeringOrientations = #'(up)
            

           \set fontSize = -0.90   % 0 = defaultsize 6 = double de size -6 = halves the size  

            % Aantal bekende noten op de G-sleutel (treble)
            % c'4^"C4" = centrale C

            % Upper Regel1
            r4          r4          r4          r4           \bar "|"  % m1
            r4          r4          r4          r4           \bar "|"  % m2
            r4          r4          r4          r4           \bar "|"  % m3
            r4          r4          r4          r4           \bar "|"  % m4
            r4          r4          r4          r4           \bar "|"  % m5
            g4^"G3"     a4^"A3"     b4^"B3"     c'4^"C4"     \bar "|"  % m6
            d'4^"D4"    e'4^"E4"    f'4^"F4"    g'4^"G4"     \bar "|"  % m7
            a'4^"A4"    b'4^"B4"    c''4^"A5"   d''4^"D5"    \bar "|"  % m8
            e''4^"E5"   f''4^"F5"   g''4^"G5"   a''4^"A5"    \bar "|"  % m9
            b''4^"B5"   c'''4^"C6"  d'''4^"D6"  e'''4^"E6"   \bar "|"  % m10
            f'''4^"F5"  g'''4^"G5"  a'''4^"A6"  b'''4^"B6"   \bar "|"  % m11
            c''''4^"C7" d''''4^"D7" e''''4^"E7" f''''4^"F7"  \bar "|"  % m12
            g''''4^"G7" a''''4^"A7" b''''4^"B7" c'''''4^"C8" \bar "|." % m13
            \break
          } 

lower =
          {
            \clef bass
            \key c \major
            \time 4/4

            \set fontSize = -0.90   % 0 = defaultsize 6 = double de size -6 = halves the size  

            % Aantal bekende noten op de f-sleutel (bass)
            % a,,,4-"A0" = laatste noot op piano
            % c,,,4-"C0" c,,4-"C1"   c,4-"C2" c4-"C3" c'4-"C4"

            % Lower Regel1
            a,,,4-"A0" b,,,4-"B0" c,,4-"C1"  d,,4-"D1" \bar "|"  % m1
            e,,4-"E1"  f,,4-"F1"  g,,4-"G1"  a,,4-"A1" \bar "|"  % m2
            b,,4-"B1"  c,4-"C2"   d,4-"D2"   e,4-"E2"  \bar "|"  % m3
            f,4-"F2"   g,4-"G2"   a,4-"A2"   b,4-"B2"  \bar "|"  % m4
            c4-"C3"    d4-"D3"    e4-"E3"    f4-"F3"   \bar "|"  % m5
            g4-"G3"    a4-"A3"    b4-"B3"    c'4-"C4"  \bar "|"  % m6
            r4         r4         r4         r4        \bar "|"  % m7
            r4         r4         r4         r4        \bar "|"  % m8
            r4         r4         r4         r4        \bar "|"  % m9
            r4         r4         r4         r4        \bar "|"  % m10
            r4         r4         r4         r4        \bar "|"  % m11
            r4         r4         r4         r4        \bar "|"  % m12
            r4         r4         r4         r4        \bar "|." % m13


            \break

          }

\book {
  \header {
    title =  "Gandstaff piano template"
    subtitle =  "versie v000a"
    composer =  "C.X. la Fontaine (1964 - )"
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240107"
    first-page-number = 1
    tagline = "werkend_voorbeeld_lilypond_piano_grandstaff_template_v000a.ly  nog pagina nummer" % dit onderdrukt de default footer
  }
  
 

  %#(set-global-staff-size 19.997457142857144)
  \paper {
     #(set-paper-size "a4" 'landscape)
  %
  %   paper-width = 21.59\cm
  %   paper-height = 27.94\cm
  %   top-margin = 1.5\cm
  %   bottom-margin = 1.5\cm
  %   left-margin = 1.5\m
  %   right-margin = 1.5\m
 
  indent = 1.6607692307692308\cm
  %   indent = 0\cm % niet eerste regel inspringen
 
  %   short-indent = 1.3286153846153848\cm
  %
  }

  % The score definition
  \score {
    <<
      \new PianoStaff \with { instrumentName = "Piano" } <<
        \new Staff = "up"   \upper
        \new Staff = "down" \lower
      >>
    >>
    % To create MIDI output, uncomment the following line:
    \midi {}  % This command creates a midi file
    \layout{} % This command creates a pdf file
  }

}

