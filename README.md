# opubliqr.geo
Package pour tout ce qui manipulation de données géographiques chez Opubliq.

## Dossier `data-raw`
Le dossier `data-raw` contient les scripts roulés en local qui permettent de préparer les données utilisées dans ce package comme les shapefiles. Les sous-dossiers à la racine du dossier `data-raw` font référence aux éditions de découpages des circonscriptions. Par exemple, le sous-dossier `data-raw/vision_opubliq/quebec_2025` contient les scripts qui préparent les données pour VISION Opubliq pour les élections municipales québécoises de 2025.

Les données intermédiaires qui ne sont pas nécessaires à l'utilisation du package sont stockées dans le dossier `data` à l'intérieur de `data-raw`. Ce dossier est exclus du package par le fichier `.gitignore` et peut entièrement généré grâce aux scripts dans `data-raw`.