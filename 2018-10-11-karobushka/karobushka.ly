\version "2.19"

melody = \relative c' {
  \key d \minor
  \tempo 4 = 120

  \repeat volta 2 {
    e4. f8 g4 a4 | f4 d a' g8 f |
    e4. f8 g4 a4 | f4 d d2 |
  }

  \break

  \repeat volta 2 {
    bes'8 bes4 c8 d4 c8 bes | a8 a4 bes8 a4 g8 f |
    e4. f8 g4 a4 | f4 d d2
  }
}

harmonies = \chords {
  \repeat volta 2 {
    a,1 d:min/f a, d:min
  }

  \break

  \repeat volta 2 {
    bes/d d:min a,:7 d:min
    % bes/d cis:aug a,:aug d:min
    % bes/d d:sus2 a,:aug d:min
  }
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
      subtitle = "Karobuška"
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
