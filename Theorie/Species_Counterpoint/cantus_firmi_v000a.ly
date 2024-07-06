%\version "2.24.3"
%
% toDo uograde lilypond door build lily pond 2.24.3

\version "2.22.1"

% file: cantus_firmi_v000a.ly
% C.X. la Fontaine
% 20240706

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

            % Single Regel1
            \time 12/1
            c'^"Thomas Morley (c. 1557 - 1602)"      r4      r4      r4  
            r4                                        r4      r4      r4        
            r4                                        r4      r4      r4        
            r4                                        r4      r4      r4  \bar "||" % regel1
            \break                                                        
                                                                            
            % Single Regel2
            %\time 9/1
            c'^"Johan Phillip Kimerger (1721-1783)"  r4      r4      r4         
            r4                                        r4      r4      r4  
            r4                                        r4      r4      r4        
            r4                                        r4      r4      r4  \bar "||" % regel2
            \break                                                          
                                                                          
            % Single Regel3
            \time 16/1
            % ToDo
            % Letop Hier onstaat een fout melding
            %  
            a3^"Franz Joseph Haydn (1732-1809)"       r4      r4      r4        
            r4                                        r4      r4      r4        
            r4                                        r4      r4      r4        
            r4                                        r4      r4      r4  \bar "||" % regel3
            \break

            % Single Regel4
            c'^"Johann Georg Albrechtsberger (1736 - 1809)"       r4      r4      r4
            r4                                                     r4      r4      r4
            r4                                                     r4      r4      r4
            r4                                                     r4      r4      r4  \bar "||" % regel4
            \break

            % Single Regel5
            d'^"Luigi Cherubini (1760 - 1842)"      r4      r4      r4        
            r4                                       r4      r4      r4        
            r4                                       r4      r4      r4        
            r4                                       r4      r4      r4        \bar "||" % regel5
            \break

            % Single Regel6
            e'^"Knud Jeppesen (1892 - 1974)"      r4      r4      r4        
            r4                                    r4      r4      r4        
            r4                                    r4      r4      r4        
            r4                                    r4      r4      r4        \bar "||" % regel6
            \break

          } 



\book {
  \header {
    title =  "Cantus Firmi"
    subtitle =  "Solfege template versie v000"
    % composer =  ""
    encodingsoftware =  "Handmatig"
    encodingdate =  "20240706"
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
        \new Staff = "single"   \single
    >>
    % To create MIDI output, uncomment the following line:
    \midi {}  % This command creates a midi file
    \layout{} % This command creates a pdf file
  }

}

