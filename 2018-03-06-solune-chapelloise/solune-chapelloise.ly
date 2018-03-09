\version "2.18"

\header {
  title = "Chapelloise"
  composer = "Solune"
}

\layout {
  \accidentalStyle modern
}

melody = \relative c'' {
  \clef treble
  \key a \minor
  \time 12/8
  \tempo 2. = 70

  \repeat volta 2 {
    e8 f e  d e c  d b c  a b g
    a4 a8  a8 b c  b4.  g8 a b
    c4 c8  c8 d c  b a b  g a b
    c b a  b a g  e' fis g  a4.
  }

  \break

  \repeat volta 2 {
    f4.  a,8 b c
    f4.  a,8 b c

    e4.  a,8 b c
    e4.  a,8 b c

    f4.  a,8 b c
    f4.  a,8 b c
    \break
  }
  \alternative {
    { e8 f e  d e c  d b c  a b g }
    { fis'4.  a,8 b c  fis4.  r4. }
  }

  \break

  f4 e d  b4.  b8 c d
  e4 d c  a4.  a8 b c
  d4 c b8 a  b4.  b8 a b
  c4 d dis  e4.  e8 d e

  f4 g f  b,='4.  b8 c d
  e4 f e  a,='4.  a8 b c
  d4 c b8 a  b4.  b8 a b
  c4 a a8 g  a2.

  \bar "|."
}

\score {
  \melody
  \layout {}
}

\score {
  \unfoldRepeats \melody
  \midi {}
}
