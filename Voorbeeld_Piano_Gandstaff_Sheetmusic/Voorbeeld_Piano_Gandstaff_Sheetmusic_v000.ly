\version "2.22.2"
% automatically converted by musicxml2ly from /home/claude/Downloads/Voorbeeld_Piano_Gandstaff_Sheetmusic_v000.musicxml
\pointAndClickOff

\header {
    title =  "Untitled score"
    composer =  "Claude la Fontaine"
    encodingsoftware =  "MuseScore 4.2.0"
    encodingdate =  "2023-12-31"
    subtitle =  "v000"
    }

#(set-global-staff-size 19.997457142857144)
\paper {
    
    paper-width = 21.59\cm
    paper-height = 27.94\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.6607692307692308\cm
    short-indent = 1.3286153846153848\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c' {
    \clef "treble" \numericTimeSignature\time 4/4 \key c \major | % 1
    \stemUp c2 _1 \stemUp g'4 _5 \stemUp c,4 _1 | % 2
    \stemUp <c e g>4 _1 \3 _5 \stemUp <e g c>4 \stemDown <g c e>4 r4 | % 3
    \stemUp <f a c>4 \stemDown <a c f>4 \stemDown <c f a>4 r4 | % 4
    \stemDown <g b d>4 \stemDown <b d g>4 \stemDown <d g b>4 r4 \bar
    "||"
    \break | % 5
    \key f \major \stemUp f,4 \stemUp a4 \stemDown c4 \stemUp f,4 | % 6
    \stemUp <c e g>2 \arpeggio \arpeggio \arpeggio \acciaccatura {
        \stemUp d'8 ( } \stemDown c2 ) | % 7
    \grace { \stemUp d8 ( } \stemDown c4 ) r4 r2 | % 8
    R1 \bar "||"
    \break | % 9
    \key c \major R1*4 \bar "|."
    }

PartPOneVoiceFive =  \relative c, {
    \clef "bass" \numericTimeSignature\time 4/4 \key c \major | % 1
    \stemUp <c c'>4 _5 _1 r4 r4 \stemUp <c e'>4 | % 2
    R1 | % 3
    \stemUp <f f'>4 _5 _1 r4 r4 \stemUp <f f'>4 | % 4
    \stemUp <g g'>4 _5 _1 r4 r4 \stemUp <g g'>4 \bar "||"
    \break | % 5
    \key f \major \stemUp <f f'>4 r4 r4 \stemUp <f a'>4 | % 6
    R1*3 \bar "||"
    \break | % 9
    \key c \major R1*4 \bar "|."
    }


% The score definition
\score {
    <<
        
        \new PianoStaff
        <<
            \set PianoStaff.instrumentName = "Piano"
            \set PianoStaff.shortInstrumentName = "Pno."
            
            \context Staff = "1" << 
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceOne" {  \PartPOneVoiceOne }
                >> \context Staff = "2" <<
                \mergeDifferentlyDottedOn\mergeDifferentlyHeadedOn
                \context Voice = "PartPOneVoiceFive" {  \PartPOneVoiceFive }
                >>
            >>
        
        >>
    \layout {}
    % To create MIDI output, uncomment the following line:
    %  \midi {\tempo 4 = 100 }
    }

