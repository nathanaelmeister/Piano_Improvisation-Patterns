\version "2.22.1"

\include "files/diagramm_script_big.ily"
\include "files/Major-diagrams.ily"
% \include "files/Minor-diagrams.ily"


\paper {
  ragged-last = ##f
}

\header {
  title = "Improvisation"
  subtitle = "Alberti-Bass, Five-Finger-Scale, Arpegggio with Octave"
  subsubtitle = \markup \null
  tagline = ##f
  composer = ""
  copyright = \include "files/copyright.ily"
}

upper = \relative c' {
  \clef treble
  \key c \major
  \time 4/4

  \mark \default
  c4-1 d-2 e-3 f-4
  g-5 f e d \bar "||"
  \mark \default
  c-1 e-2 g-3 c-5
  c, e g c \bar "||"
}

lower = \relative c {
  \clef bass
  \key c \major
  \time 4/4

  \repeat unfold 2 {
    c8-5 g'-1 e-3 g-1
    c, g' e g
    c, g' e g
    c, g' e g \bar "||"
  }
}

% C-Dur ============================================ %%
\C
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"C-Dur "
    \new Staff = "upper" \transpose c c { \upper }
    \new Staff = "lower" \transpose c c { \lower }
  >>
  \layout { }
  \midi { }
}

% G-Dur ============================================ %%
\G
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"G-Dur "
    \new Staff = "upper" \transpose c g { \upper }
    \new Staff = "lower" \transpose c g { \lower }
  >>
  \layout { }
  \midi { }
}

% D-Dur ============================================ %%
\D
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"D-Dur "
    \new Staff = "upper" \transpose c d { \upper }
    \new Staff = "lower" \transpose c d { \lower }
  >>
  \layout { }
  \midi { }
}

% A-Dur ============================================ %%
\A
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"A-Dur "
    \new Staff = "upper" \transpose c a { \upper }
    \new Staff = "lower" \transpose c a { \lower }
  >>
  \layout { }
  \midi { }
}

% E-Dur ============================================ %%
\E
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"E-Dur "
    \new Staff = "upper" \transpose c e { \upper }
    \new Staff = "lower" \transpose c e { \lower }
  >>
  \layout { }
  \midi { }
}
