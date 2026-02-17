library(osmdata)

q <- opq(getbb('Bochum, Germany'))
s1a <- add_osm_feature(q, key = "highway", value = "motorway") |> osmdata_sf() 

q <- opq(c(7.17, 51.44, 7.3, 51.5))
s1b <- add_osm_feature(q, key = "highway", value = "motorway") |> osmdata_sf()

save(s1a, s1b, file = "daten/strassen-bochum-download.RData")
