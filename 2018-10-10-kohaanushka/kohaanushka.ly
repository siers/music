\version "2.19"

melody = \relative c' {
  \key e \minor
  \tempo 4 = 100

  \repeat volta 2 {
    e='8  g fis fis  g a b4  b8 a g a b4 b
    e,='8 g fis fis  g a b4  b8 b g' fis e4 e
  }

  \break

  \repeat volta 2 {
    d=''4 d8. c16 c8 b b8. c16  b8 a a8. b16 a8 g g4
    d'=''4 d8. c16 c8 b b4  b8 b g' fis e4 e4
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
    \melody

    \header {
      subtitle = "Kohanuška"
    }
  }

  \score {
    \unfoldRepeats \melody
    \midi {}
  }
}
