# Ce script load les shapefiles des districts électoraux de la Ville de Qc dans le package 

spatial_routes_quebec <- sf::read_sf("data-raw/data/vision_opubliq/quebec_2025/quebec/vdq-voiepublique.shp") |>
  dplyr::mutate(
    geometry = sf::st_zm(geometry)
  )

save(spatial_routes_quebec, file = "data/spatial_routes_quebec.rda", compress = "bzip2")
