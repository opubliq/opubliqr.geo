spatial_districts_quebec <- sf::read_sf("data-raw/data/vision_opubliq/quebec_2025/quebec/vdq-districtelectoral.shp")

save(spatial_districts_quebec, file = "data/spatial_districts_quebec.rda", compress = "bzip2")
