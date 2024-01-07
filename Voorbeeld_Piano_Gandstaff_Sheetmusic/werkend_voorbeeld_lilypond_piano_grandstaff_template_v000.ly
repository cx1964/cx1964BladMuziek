\version "2.22.2"
% file: werkend_voorbeeld_lilypond_piano_grandstaff_template_v000.ly
% C.X. la Fontaine
% 20240107 

\pointAndClickOff

\language "english"  % letop tbv aanduiding s (=sharp) en f (=flat)

upper = 
            {
            \clef treble
            \key c \major
            \time 2/4
            \tempo "Allegro ma con tenerezza" 4 = 110

            % Haakje open voor begin m1 
            % en haakje sluiten na m4 zorgt voor een slur over m1 t/m m4
            %%\set fingeringOrientations = #'(left)
            \set fingeringOrientations = #'(up)
           
           % Upper Regel1
            (<c''-1 e''-3>2\p  | % m1 -- voorbeeld gebruik van beams
            
            <d''-2 f''-4>2\<   | % m2 -- start met \< 
            <b'  gs''>2        | % m3 -- omdat taal engels is gebruik f voor flat en s voor sharp
            <c'' a''>2)\!\f    | % m4 -- stop cresendo met \!
            \break

           % Upper Regel2
           r4 r4 | % m5
           r4 r4 | % m6
           r4 r4 | % m7
           r4 r4 | % m8
           \break

           % Upper Regel3
           r4 r4 | % m9
           r4 r4 | % m10
           r4 r4 | % m11
           r4 r4 \bar "|." % m12
           \break


          } 

lower =
            {
            \clef bass
            \key c \major
            \time 2/4

            % Lower Regel1
            r8-"con pedale" f8 [f8 f8]  | % m1 -- voorbeeld gebruik van beams
                                        | %    -- letop de beam bestaat uit 3 1/8 f noten
            r8 f8 [f8 f8]  | % m2
            r8 f8 [f8 f8]  | % m3
            r8 f8 [e8 c8]  | % m4
            \break

            % Lower Regel2
            r4 r4 | % m5
            r4 r4 | % m6
            r4 r4 | % m7
            r4 r4 | % m8
            \break

            % Lower Regel3
            r4 r4 | % m9
            r4 r4 | % m10
            r4 r4 | % m11
            r4 r4 \bar "|." % m12
            \break
          }


\book {
  \header {
    title =  "Gandstaff piano template"
    composer =  "C.X. la Fontaine (1964 - )"
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240107"
    subtitle =  "versie v000"
    first-page-number = 1
    tagline = "werkend_voorbeeld_lilypond_piano_grandstaff_template_v000.ly  nog pagina nummer" % dit onderdrukt de default footer
  }
  

  %#(set-global-staff-size 19.997457142857144)
  %\paper {
  %
  %   paper-width = 21.59\cm
  %   paper-height = 27.94\cm
  %   top-margin = 1.5\cm
  %   bottom-margin = 1.5\cm
  %   left-margin = 1.5\m
  %   right-margin = 1.5\m
  %   indent = 1.6607692307692308\cm
  %   short-indent = 1.3286153846153848\cm
  %   }



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

