%\version "2.24.3"
%
% toDo uograde lilypond door build lily pond 2.24.3

\version "2.22.1"

% file: cantus_firmi_v000a.ly
% C.X. la Fontaine
% 20240707

\pointAndClickOff

\language "english"  % letop tbv aanduiding s (=sharp) en f (=flat)

single = 
          {
            \clef treble
            \key c \major
            \numericTimeSignature % zonder commentaar van dit command dan een time signature van x/y
                                  % met wordt breve of alla breve (c en c met streepje)

            %\tempo "Adagio" 4 = 60

            % Haakje open voor begin m1 
            % en haakje sluiten na m4 zorgt voor een slur over m1 t/m m4
            %%\set fingeringOrientations = #'(left)
            \set fingeringOrientations = #'(up)
            

            % Aantal bekende noten op de G-sleutel (treble)
            % c'4^"C4" = centrale C


            % plaats hieronder eventule nootbalk met de melodie boven de CF

            \relative {
              % Single Regel1
              \time 12/1
              c'1^"Thomas Morley (c. 1557 - 1602)"      f1     e1     d1  
              c1                                        f1     g1     a1        
              g1                                        e1     d1     c1  \bar "||" % regel1
            }
            \break
            

            

            {                                                                
              % Single Regel2
              \time 9/1
              c'1^"Johan Phillip Kimberger (1721-1783)"  g'1     e'1     a'1         
              g'1                                        f'1     e'1     d'1  
              c'1                                                            \bar "||" % regel2
            }
            \break                                                          

            \relative {                                                              
            % Single Regel3
            \time 11/1
            % ToDo
            % Letop Hier onstaat een fout melding
            %  
            a1^"Franz Joseph Haydn (1732-1809)"      c1      b1      e1        
            c1                                       f1      d1      e1        
            c1                                       b1      a1          \bar "||" % regel3
            }
            \break

            \relative {
              % Single Regel4
              \time 12/1
              c'1^"Johann Georg Albrechtsberger (1736 - 1809)"       e1      d1      b1
              c1                                                     a1      b1      g1
              c1                                                     e1      d1      c1  \bar "||" % regel4
            }
            \break

            \relative {
              % Single Regel5
              \time 14/1
              d'1^"Luigi Cherubini (1760 - 1842)"      g1      e1      f1        
              e1                                       a1      g1      e1        
              c1                                       d1      e1      f1        
              e1                                       d1                  \bar "||" % regel5
            }
            \break

            \relative {
              \time 9/1
              % Single Regel6
              e'1^"Knud Jeppesen (1892 - 1974)"     d1      e1      f1       
              g1                                    a1      d,1     f1                      
              e1                                                        \bar "||" % regel6
            }
            \break

          } 



\book {
  \header {
    title =  "Cantus Firmi"
    subtitle =  "template versie v000"
    % composer =  ""
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240707"
    first-page-number = 1
    tagline = "cantus_firmi_v000a.ly  nog pagina nummer" % dit onderdrukt de default footer
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
        \new Staff = "single" \with { \remove Time_signature_engraver }  \single
    >>
    % To create MIDI output, uncomment the following line:
    \midi {}  % This command creates a midi file
    \layout{} % This command creates a pdf file
  }

}

