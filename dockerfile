# Basis-Image verwenden
FROM ubuntu:latest

# Umgebungsvariablen einstellen
ENV DEBIAN_FRONTEND=noninteractive

# Update und Installation der notwendigen Pakete
RUN apt-get update && \
    apt-get install -y lilypond timidity && \
    apt-get clean

# Arbeitsverzeichnis festlegen
WORKDIR /app

# Dein Bash-Skript und alle benötigten Dateien kopieren
COPY run.sh /app/

# Das Skript ausführbar machen
RUN chmod +x /app/run.sh

# Standardbefehl, der ausgeführt wird, wenn der Container startet
CMD ["bash"]
