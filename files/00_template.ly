\version "2.22.1"

\paper {
  ragged-last = ##f
}

\header {
  title = ""
  subtitle = ""
  subsubtitle = ""
  tagline = ##f
  composer = ""
}

upper = \relative c'' {
  \clef treble
  \key c \major
  \time 4/4

  %right hand notes
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  %left hand notes
}

\score {
  \new PianoStaff <<
    %\set PianoStaff.instrumentName = #"Piano  "
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { }
  \midi { }
}

