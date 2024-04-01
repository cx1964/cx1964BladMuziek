\version "2.22.2"
% file: wq_117_39_h98_cpe_bach_la_caroline_v001a.ly

\pointAndClickOff

\book {
  \header {
    title =  "la Carolina"
    composer =  "C.P.E. Bach ()"
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240102"
    subtitle =  "WQ 117/39 H98"
    tagline = "wq_117_39_h98_cpe_bach_la_caroline_v001a.ly  nog pagina nummer" % dit onderdrukt de default footer
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

      \new PianoStaff <<
        \new Staff = "up" {
                           
          %
          {
            \clef treble
            \key c \major
            \time 2/4
            c''2  d''2       | % m1
            c'4 d'4 e'4 f'4  | % m2
          }
        }
        \new Staff = "down" {
          %
          {
            \clef bass
            \key c \major
            \time 2/4
            c4 d4 e4 f4  | % m1
          }

        }
      >>

    >>
    % To create MIDI output, uncomment the following line:
    \midi {}
  }

}

