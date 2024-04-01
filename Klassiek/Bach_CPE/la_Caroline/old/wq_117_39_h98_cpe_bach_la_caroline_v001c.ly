\version "2.22.2"
% file: wq_117_39_h98_cpe_bach_la_caroline_v001c.ly

\pointAndClickOff

\language "english"  % letop tbv aanduiding s (=sharp) en f (=flat)

\book {
  \header {
    title =  "la Carolina"
    composer =  "C.P.E. Bach (1714 - 1788)"
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240102"
    subtitle =  "WQ 117/39 H98"
    tagline = "wq_117_39_h98_cpe_bach_la_caroline_v001c.ly  nog pagina nummer" % dit onderdrukt de default footer
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
        \new Staff = "up" {
                           
          %
          {
            \clef treble
            \key c \major
            \time 2/4
            \tempo "Allegro ma con tenerezza" 4 = 110

            % Haakje open voor begin m1 
            % en haakje sluiten na m4 zorgt voor een slur over m1 t/m m4
            %%\set fingeringOrientations = #'(left)
            \set fingeringOrientations = #'(up)
           
            (<c''-1 e''-3>2\p  | % m1 -- voorbeeld gebruik van beams
            
            <d''-2 f''-4>2\<   | % m2 -- start met \< 
            <b'  gs''>2        | % m3 -- omdat taal engels is gebruik f voor flat en s voor sharp
            <c'' a''>2)\!\f    | % m4 -- stop cresendo met \!

          }
        }
        \new Staff = "down" {
          %
          {
            \clef bass
            \key c \major
            \time 2/4
            r8-"con pedale" f8 [f8 f8]  | % m1 -- voorbeeld gebruik van beams
                                        | %    -- letop de beam bestaat uit 3 1/8 f noten

            r8 f8 [f8 f8]  | % m2
            r8 f8 [f8 f8]  | % m3
            r8 f8 [e8 c8]  | % m4

          }

        }
      >>

    >>
    % To create MIDI output, uncomment the following line:
    \midi {}  % This command creates a midi file
    \layout{} % This command creates a pdf file
  }

}

