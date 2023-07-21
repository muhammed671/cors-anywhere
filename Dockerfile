# Verwenden Sie das offizielle Node.js-Basisimage
FROM node:14

# Arbeitsverzeichnis im Container erstellen
WORKDIR /app

# Abhängigkeiten installieren
COPY package*.json ./
RUN npm install

# Projektdateien in das Arbeitsverzeichnis kopieren
COPY . .

# Port freigeben (falls erforderlich)
EXPOSE 8080

# Befehl zum Starten der Anwendung
CMD [ "npm", "start" ]
