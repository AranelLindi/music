\version "2.22.1"
\score {
  <<
    \new Voice = "bass" {
      \relative c {
        \clef bass
        \key bes \minor % b-Moll mit 5 b-Vorzeichen
        \time 4/4
        \tempo 4 = 160 % Original: 80

        r1          % Ganze Pause
        bes1 \(        % b (automatisch korrekt als b, weil die Tonart festgelegt ist)
        as1         % as
        ges1        % ges
        es'1 \)       % es
        \break      % Zeilenumbruch vor der nächsten Note

        bes1 \(       % b
        as1         % as
        ges1        % ges
        es'1 ~      % es wird gehalten
        es1 \)        % es wird weitergespielt
        
	r1
	r1
        \break      % Zeilenumbruch nach der Pause
        
        bes2 \( es     % Fortsetzung der Noten in der nächsten Zeile
        ges,1 \)
        bes1 \(
        as1 \)
      }
    }

    \new Lyrics \lyricsto "bass" {
      Ooh __ _ _ _ 
      Ooh __ _ _ _ % Halte die Silbe "Ooh" über alle Noten hinweg
      Fly, __ _ _ fly, __ _ % Hier beginnt der neue Text nach dem Umbruch
    }
  >>

  \layout { }
  \midi { }
}

