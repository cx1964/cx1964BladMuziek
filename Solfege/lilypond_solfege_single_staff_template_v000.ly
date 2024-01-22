\version "2.24.3"
% file: lilypond_solfege_single_staff_template_v000.ly
% C.X. la Fontaine
% 20240121 

\pointAndClickOff

\language "english"  % letop tbv aanduiding s (=sharp) en f (=flat)

single = 
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
            

            % Aantal bekende noten op de G-sleutel (treble)
            % c'4^"C4" = centrale C

            % Single Regel1
            r4      r4      r4      r4        \bar "|" % m1
            r4      r4      r4      r4        \bar "|" % m2
            r4      r4      r4      r4        \bar "|" % m3
            r4      r4      r4      r4        \bar "|" % m4
            \break

            % Single Regel2
            r4      r4      r4      r4        \bar "|" % m5
            r4      r4      r4      r4        \bar "|" % m6
            r4      r4      r4      r4        \bar "|" % m7
            r4      r4      r4      r4        \bar "|" % m8
            \break

            % Single Regel3
            r4      r4      r4      r4        \bar "|" % m9
            r4      r4      r4      r4        \bar "|" % m10
            r4      r4      r4      r4        \bar "|" % m11
            r4      r4      r4      r4        \bar "|" % m12
            \break

            % Single Regel4
            r4      r4      r4      r4        \bar "|" % m13
            r4      r4      r4      r4        \bar "|" % m14
            r4      r4      r4      r4        \bar "|" % m15
            r4      r4      r4      r4        \bar "|" % m16
            \break

            % Single Regel5
            r4      r4      r4      r4        \bar "|" % m17
            r4      r4      r4      r4        \bar "|" % m18
            r4      r4      r4      r4        \bar "|" % m19
            r4      r4      r4      r4        \bar "|" % m20
            \break

            % Single Regel6
            r4      r4      r4      r4        \bar "|" % m21
            r4      r4      r4      r4        \bar "|" % m22
            r4      r4      r4      r4        \bar "|" % m23
            r4      r4      r4      r4        \bar "|" % m24
            \break

            % Single Regel7
            c'4     f'4     e'4     d'4       \bar "|" % m25
            r4      r4      r4      r4        \bar "|" % m26
            r4      r4      r4      r4        \bar "|" % m27
            r4      r4      r4      r4        \bar "|" % m28
            \break

            % Single Regel8
            c'4     f'4     e'4     d'4       \bar "|" % m29
            r4      r4      r4      r4        \bar "|" % m30
            r4      r4      r4      r4        \bar "|" % m31
            r4      r4      r4      r4        \bar "|" % m32
            \break

            % Single Regel9
            a4     d'4     c'4      b4        \bar "|" % m33
            r4      r4      r4      r4        \bar "|" % m34
            r4      r4      r4      r4        \bar "|" % m35
            r4      r4      r4      r4        \bar "|" % m36
            \break

            % Single Regel10
            a4     d'4     c'4      b4        \bar "|" % m37
            r4      r4      r4      r4        \bar "|" % m38
            r4      r4      r4      r4        \bar "|" % m39
            r4      r4      r4      r4        \bar "|" % m40
            \break

            % Single Regel11
            a4     d'4     c'4      b4        \bar "|" % m41
            r4      r4      r4      r4        \bar "|" % m42
            r4      r4      r4      r4        \bar "|" % m43
            r4      r4      r4      r4        \bar "|" % m44
            \break

            % Single Regel12
            a4     d'4     c'4      b4        \bar "|" % m45
            r4      r4      r4      r4        \bar "|" % m46
            r4      r4      r4      r4        \bar "|" % m47
            r4      r4      r4      r4        \bar "|" % m48
            \break

          } 



\book {
  \header {
    title =  "Van blad zingen"
    subtitle =  "Solfege template versie v000"
    composer =  "A. van den Hoek"
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240122"
    first-page-number = 1
    tagline = "lilypond_solfege_single_staff_template_v000.ly  nog pagina nummer" % dit onderdrukt de default footer
  }
  

  %#(set-global-staff-size 19.997457142857144)
  \paper {
   %
   %   paper-width = 21.59\cm
   %   paper-height = 27.94\cm
   %   top-margin = 1.5\cm
   %   bottom-margin = 1.5\cm
   %   left-margin = 1.5\m
   %   right-margin = 1.5\m
   
   %   indent = 1.6607692307692308\cm
   indent = 0\cm % niet eerste regel inspringen
   
   %   short-indent = 1.3286153846153848\cm
   %
   #(set-default-paper-size "a4" 'portrait)
  }

  % The score definition
  \score {
    <<
        \new Staff = "single"   \single
    >>
    % To create MIDI output, uncomment the following line:
    \midi {}  % This command creates a midi file
    \layout{} % This command creates a pdf file
  }

}

