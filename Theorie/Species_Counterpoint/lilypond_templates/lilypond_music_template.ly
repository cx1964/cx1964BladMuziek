\version "2.24.2"

\header {
  title = "Counterpoint Composition"
  composer = "Your Name"
}

\score {
  <<
    \new Staff = "VoiceOne" \relative c' {
      \clef treble
      \key c \major
      \time 4/4
      \repeat volta 16 {
        c4 d e f | g a b c |
        d4 e f g | a b c d |
        e4 f g a | b c d e |
        f4 g a b | c d e f |
        g4 a b c | d e f g |
        a4 b c d | e f g a |
        b4 c d e | f g a b |
        c4 d e f | g a b c |
        \break
        c4 d e f | g a b c |
        d4 e f g | a b c d |
        e4 f g a | b c d e |
        f4 g a b | c d e f |
        g4 a b c | d e f g |
        a4 b c d | e f g a |
        b4 c d e | f g a b |
        c4 d e f | g a b c |
      }
    }
    \new Staff = "VoiceTwo" \relative c {
      \clef bass
      \key c \major
      \time 4/4
      \repeat volta 16 {
        c4 b a g | f e d c |
        b4 a g f | e d c b |
        a4 g f e | d c b a |
        g4 f e d | c b a g |
        f4 e d c | b a g f |
        e4 d c b | a g f e |
        d4 c b a | g f e d |
        c4 b a g | f e d c |
        \break
        c4 b a g | f e d c |
        b4 a g f | e d c b |
        a4 g f e | d c b a |
        g4 f e d | c b a g |
        f4 e d c | b a g f |
        e4 d c b | a g f e |
        d4 c b a | g f e d |
        c4 b a g | f e d c |
      }
    }
  >>
  \layout { }
  \midi { }
}
