\version "2.22.1"
\score {
  <<
    \new Voice = "melody" {
      \relative c' {
        \key c \major
        \time 4/4
        \tempo 4 = 100

        % Melodie von "Alle meine Entchen", beginnend auf C
        c4 d e f
        g2 g
        a4 a a a
        g1
        a4 a a a
        g1

	f4 f f f
	e2 e
        d4 d d d
        c1
      }
    }
    
    \new Lyrics \lyricsto "melody" {
      Al -- le mei -- ne Ent -- chen,
      schwim -- men auf dem See,
      schwim -- men auf dem See,
      Köpf -- chen in das Was -- ser,
      Schwänz -- chen in die Höh'.
    }
  >>

  \layout { }
  \midi { }
}

