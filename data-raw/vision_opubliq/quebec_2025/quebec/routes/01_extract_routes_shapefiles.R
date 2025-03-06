# Ce script extrait les fichiers shapefiles des districts électoraux de la Ville de Québec du dossier zip téléchargé

# Télécharger le fichier zip
url <- "https://www.donneesquebec.ca/recherche/dataset/e4915d10-9c33-47a8-8e06-cf39306ef583/resource/99be670a-7720-48b4-87f3-df2947602b39/download/vdq-voiepublique.zip"

# Dossier de destination
destination_folder <- "data-raw/data/vision_opubliq/quebec_2025/quebec/"

# Créer un dossier pour l'extraction (facultatif)
dir.create(destination_folder, showWarnings = FALSE, recursive = TRUE)

download.file(url, paste0(destination_folder, "routes.zip"), mode = "wb")

unzip(paste0(destination_folder, "routes.zip"), exdir = destination_folder)
unlink(paste0(destination_folder, "routes.zip"))
