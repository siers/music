\version "2.19"

melody = \relative c' {
  \key c \minor
  \time 2/4
  \tempo 4 = 120

  \repeat volta 2 {
    c8 es g4 | f16 g as8 g4 | d8 d16 es f8 g | es c c4
  }

  \repeat volta 2 {
    as'8 as16 bes16 c16 bes as8 | g8 es g4 |
    d8 d16 es f8 g16 f |
  }

  \alternative {
    { es8 d c4 }
    { es8 d c8 f~ }
  }

  \break

  f f es es | d d c8 f~ |
  f f es es | d d c8 f~ |
  f f es es | d d c4 |
  g' g | g8 g8 g4
  % c4 g'4 | g g8 g | g4
}

harmonies = \chords {
}

% due to https://lists.gnu.org/archive/html/bug-lilypond/2018-10/msg00007.html
\layout {
  \context { \ChordNames
    \override VerticalAxisGroup.staff-affinity = #UP
  }
}

\book {
  \paper {
    print-all-headers = ##t
    page-breaking = #ly:one-page-breaking
  }

  \header {
    tagline = ""
  }

  \score {
    <<
    \melody
    \harmonies
    >>

    \header {
      subtitle = "Barabolja"
    }
  }

  \score {
    \unfoldRepeats <<
      \melody
      \harmonies
    >>
    \midi {}
  }
}
