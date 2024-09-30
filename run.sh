#!/bin/bash

# Überprüfen, ob ein Dateiname übergeben wurde
if [ -z "$1" ]; then
  echo "Fehler: Kein Dateiname übergeben."
  exit 1
fi

# Dateiname ohne Erweiterung
FILENAME=$1

# Standardwert für den zweiten Parameter (false)
PLAY_MIDI=false
if [ ! -z "$2" ]; then
  PLAY_MIDI=$2
fi

# Lilypond Befehl ausführen
lilypond "${FILENAME}.ly"

# Wenn der zweite Parameter true ist, Timidity ausführen
if [ "$PLAY_MIDI" = true ]; then
  timidity "${FILENAME}.midi"
fi
