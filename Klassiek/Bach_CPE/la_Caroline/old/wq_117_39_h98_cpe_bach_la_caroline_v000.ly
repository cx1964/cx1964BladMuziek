\version "2.22.2"
% automatically converted by musicxml2ly from /home/claude/Downloads/wq_117_39_h98_cpe_bach_la_caroline_v000.musicxml
\pointAndClickOff

\header {
    title =  "Untitled score"
    composer =  \markup \column {
        \line { "Carl Philipp Emanuel Bach"}
        \line { ""} }
    
    encodingsoftware =  "MuseScore 4.2.0"
    encodingdate =  "2023-12-30"
    subtitle =  "Wq 117/39, H98"
    }

#(set-global-staff-size 19.997485714285716)
\paper {
    
    paper-width = 24.59\cm
    paper-height = 27.94\cm
    top-margin = 1.5\cm
    bottom-margin = 1.5\cm
    left-margin = 1.5\cm
    right-margin = 1.5\cm
    indent = 1.8915384615384614\cm
    short-indent = 1.5132307692307692\cm
    }
\layout {
    \context { \Score
        skipBars = ##t
        autoBeaming = ##f
        }
    }
PartPOneVoiceOne =  \relative c'' {
    \repeat volta 2 {
        \clef "treble" \time 2/4 \key c \major | % 1
        \tempo 4=110 \stemDown <c e>2 ( ^ "Allegro ma con tenerezza" _\p
        | % 2
        \stemDown <d f>2 _\< | % 3
        \stemDown <b gis'>2 | % 4
        \stemDown <c a'>2 ) _\! _\f | % 5
        \stemDown c'8 ( [ \stemDown e,8 ) \acciaccatura { \stemUp f8 }
        \stemDown f8 ( \stemDown e8 ) ] | % 6
        \stemDown e4 ( \stemDown dis8 ) r8 | % 7
        \stemDown b'8 ( [ \stemDown e,8 ) \acciaccatura { \stemUp f8 }
        \stemDown e8 ( \stemDown d8 ) ] | % 8
        \stemDown d4 ( \stemDown cis8 ) r8 | % 9
        \stemDown a'8 [ \stemDown c,8 ( \stemDown b8 \prall \stemDown a8
        ) ] | \barNumberCheck #10
        \stemDown a'8 [ \stemDown c,8 ( \stemDown b8 \prall \stemDown a8
        ) ] \break | % 11
        \stemDown <a b f'>4 ( \stemDown e'16 [ _\> \stemDown d16
        \stemDown c16 \stemDown b16 ] | % 12
        \stemUp a4 \stemUp gis8 ) [ _\! \stemUp <gis b>8 ] | % 13
        \stemUp <gis b>4 ( \stemUp <a c>8 ) [ \stemUp <fis dis'>8 ] | % 14
        \stemUp <fis dis'>4 ( \stemDown <gis e'>8 ) [ \stemDown <gis b>8
        ] | % 15
        \stemDown <b d>4 ( \stemDown <a c>4 | % 16
        \stemUp <g b>8 ) \stemUp e4 -- _\f \stemUp e8 ~ -- | % 17
        \stemUp e8 \stemUp e4 -- \stemUp e8 ~ -- | % 18
        \stemUp e8 [ \stemUp <gis, b>8 ( _\p \stemUp <a c>8 \stemUp <b
            d>8 ) ] | % 19
        \stemUp <b d>4 ( \stemUp <a c>4 ) | \barNumberCheck #20
        \stemUp <a c>2 ( | % 21
        \stemUp <gis b>8 ) r8 r4 }
    \break \repeat volta 2 {
        | % 22
        R2*9 \break | % 31
        R2*14 \break | % 45
        R2*8 \break | % 53
        R2*10 }
    }

PartPOneVoiceFive =  \relative a {
    \repeat volta 2 {
        \clef "bass" \time 2/4 \key c \major | % 1
        r8 \stemDown a8 [ _ "con pedale" \stemDown a8 \stemDown a8 ] | % 2
        r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] | % 3
        r8 \stemDown a8 [ \stemDown a8 \stemDown a8 ] | % 4
        r8 \stemDown a8 ( [ \stemDown e8 \stemDown c8 ] | % 5
        \stemUp a2 ) | % 6
        r8 \stemDown b8 ( [ \stemDown b'8 \stemDown a8 ] | % 7
        \stemDown gis2 ) | % 8
        r8 \stemDown a,8 ( [ \stemDown a'8 \stemDown g8 ] | % 9
        \stemDown f2 ) | \barNumberCheck #10
        \stemDown e2 \break | % 11
        \stemDown d8 [ \stemDown d8 \stemDown d8 \stemDown d8 ] | % 12
        \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] _\p | % 13
        \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 14
        \stemDown e8 [ \stemDown e8 \stemDown e8 \stemDown e8 ] | % 15
        \stemDown dis8 [ \stemDown dis8 \stemDown dis8 \stemDown dis8 ]
        | % 16
        \stemDown e8 [ \stemDown e8 ( \stemDown d8 \stemDown c8 ] | % 17
        \stemUp b8 [ \stemUp a8 \stemUp gis8 \stemUp fis8 ] | % 18
        \stemUp e2 ) | % 19
        \stemUp dis2 ( | \barNumberCheck #20
        \stemUp e2 ~ | % 21
        \stemUp e4 ) r4 }
    \break \repeat volta 2 {
        | % 22
        R2*9 \break | % 31
        R2*14 \break | % 45
        R2*8 \break | % 53
        R2*10 }
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
    \midi {\tempo 4 = 110 }
    }

