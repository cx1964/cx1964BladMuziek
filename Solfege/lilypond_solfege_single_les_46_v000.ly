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
            c'4         g'4         a'4  f'4     \bar "|" % m1
            g'8[  g'8]  f'8[  e'8]  d'4  e'4     \bar "|" % m2
            c'4         g'4         a'4  f'4     \bar "|" % m3
            g'8[  g'8]  e'8[  d'8]  c'2          \bar "|" % m4
            \break
                                                 
            % Single Regel2                      
            c'4         g'4  a'4        f'4      \bar "|" % m5
            a'8[  g'8]  e'4  g'8[ f'8]  d'4      \bar "|" % m6
            f'8[  e'8]  c'4  e'8[ d'8]  a4       \bar "|" % m7
            c'1                                  \bar "|" % m8
            \break                               
                                                  
            % Single Regel3                       
            c'4         g'4  a'4        f'4      \bar "|" % m9
            a'8[  f'8]  d'4  g'8[ e'8]  c'4      \bar "|" % m10
            f'8[  d'8]  b4   e'8[ c'8]  a4       \bar "|" % m11
            d'4         b4   c'2                 \bar "|" % m12
            \break

            % Single Regel4
            c'4     g'4     a'4     f'4       \bar "|" % m13
            r4      r4      r4      r4        \bar "|" % m14
            r4      r4      r4      r4        \bar "|" % m15
            r4      r4      r4      r4        \bar "|" % m16
            \break

            % Single Regel5
            c'4     g'4     a'4     f'4       \bar "|" % m17
            r4      r4      r4      r4        \bar "|" % m18
            r4      r4      r4      r4        \bar "|" % m19
            r4      r4      r4      r4        \bar "|" % m20
            \break

            % Single Regel6
            c'4     g'4     a'4     f'4       \bar "|" % m21
            r4      r4      r4      r4        \bar "|" % m22
            r4      r4      r4      r4        \bar "|" % m23
            r4      r4      r4      r4        \bar "|" % m24
            \break

            % Single Regel7 mineur
            a4      e'4     f'4     d'4       \bar "|" % m25
            r4      r4      r4      r4        \bar "|" % m26
            r4      r4      r4      r4        \bar "|" % m27
            r4      r4      r4      r4        \bar "|" % m28
            \break

            % Single Regel8 mineur
            a4      e'4     f'4     d'4       \bar "|" % m29
            r4      r4      r4      r4        \bar "|" % m30
            r4      r4      r4      r4        \bar "|" % m31
            r4      r4      r4      r4        \bar "|" % m32
            \break

            % Single Regel9 mineur
            a4      e'4     f'4     d'4       \bar "|" % m33
            r4      r4      r4      r4        \bar "|" % m34
            r4      r4      r4      r4        \bar "|" % m35
            r4      r4      r4      r4        \bar "|" % m36
            \break
           

          } 



\book {
  \header {
    title =  "Van blad zingen"
    subtitle =  "Sequensen Solfège Les 46 versie v000"
    composer =  "A. van den Hoek"
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240218"
    first-page-number = 1
    tagline = "lilypond_solfege_single_les_46_v000.ly  nog pagina nummer" % dit onderdrukt de default footer
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

