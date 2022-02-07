# ScriptConvert

## Installation

Déposer le script, dans le dossier où se trouve vos fichier mkv à convertir.

## Utilisation

Petit Mémo pour les commandes FFMPEG pour configurer le script .

- Audio vers ----> aac:
```bash
ffmpeg -i "inputFile.mkv" -vcodec copy -acodec aac -strict -2 "outputFile.mp4"
```
> `-vcodec copy` ==> Garde le meme flux video -> h264
> `-acodec aac -strict -2` ==> Force a s'encoder en aac


- Copie simple de mkv-->mp4 (seulement si x264 et aac) :
```bash
ffmpeg -i "inputFile.mkv" -codec copy "outputFile.mp4"
```

- Choisir différent flux du fichier :
```bash
ffmpeg -i "inputFile.mkv" -codec copy -map 0:a:2 -map 0:s:3 "outputFile.mp4"
```

> `-map 0:a:2 ` va sélectionner la piste audio #3 
> `-map 0:s:3` va sélectionner le sous-titre #4 