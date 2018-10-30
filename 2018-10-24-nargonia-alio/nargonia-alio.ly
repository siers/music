\version "2.19"

melody = \relative c'' {
  \key b \minor
  \time 3/4
  % \tempo 4 = 120 % when listening for mistakes
  \tempo 4 = 145

  \repeat volta 2 {
    cis4 cis8 b d b | cis4 fis,2 | cis'8 d b a b d | g,4 e' d |
    \break
    % cis4 cis8 b d b | cis4 fis,2 | cis'8 d g, fis g b | e,4 cis' d
    cis4 cis8 b d b | cis4 fis,2 | cis'8 d b a fis e
  }
  \alternative {
    { g8 e cis'4 d }
    { g,8 e cis'4 e }
  }
  \break

  % 2nd part

  \repeat volta 2 {
    fis8 e d b a b | d4 b8 a4 b8 |
    e8-> d b e-> d b | e-> d a-> b d-> e
    \break

    fis4-- e8 d b a | e'8 d4 b4. | d8 b a b d e | e4 f4 fis4
  }
}

harmonies = \chords {
  \repeat volta 2 {
    fis2.:min d g e:min
    fis2.:min d g
  }

  \alternative {
    { a }
    { a }
  }

  % 2nd part

  \repeat volta 2 {
    b:min a/cis     e/b e:min/b
    d/a   e:min/b   g/d a
  }
}

\book {
  \header {
    title = "Nargonia — Alio"
    tagline = ""
  }

  \score {
    <<
    \melody
    \harmonies
    >>
  }

  \score {
    \unfoldRepeats <<
      \melody
      \harmonies
    >>
    \midi {}
  }
}
