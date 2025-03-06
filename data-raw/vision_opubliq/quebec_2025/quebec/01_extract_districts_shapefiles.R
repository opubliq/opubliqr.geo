# Ce script extrait les fichiers shapefiles des districts électoraux de la Ville de Québec du dossier zip téléchargé

# Télécharger le fichier zip
url <- "https://www.donneesquebec.ca/recherche/dataset/ca1847da-e908-43de-bd8c-588570331650/resource/bfc0c5d8-f947-49de-8292-5fa78d01b103/download/vdq-districtelectoral.zip"

# Dossier de destination
destination_folder <- "data-raw/data/vision_opubliq/quebec_2025/quebec/"

# Créer un dossier pour l'extraction (facultatif)
dir.create(destination_folder, showWarnings = FALSE, recursive = TRUE)

download.file(url, paste0(destination_folder, "districts.zip"), mode = "wb")

unzip(paste0(destination_folder, "districts.zip"), exdir = destination_folder)
unlink(paste0(destination_folder, "districts.zip"))
