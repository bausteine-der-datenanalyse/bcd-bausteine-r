library(tidyverse)

rm(list = ls())
load("data-raw/data-lecture-2018.Rdata")

# reorganize bochum
d_ns_bochum_tag <- d_ns_bochum_tag |> select(datum = Datum, niederschlag = NS)
d_ns_bochum_monat <- d_ns_bochum_monat |> select(jahr = Jahr, monat = Monat, niederschlag = NS)

save(
  d_wb_all,
  d_wb_2012,
  d_wb_countries,
  d_wb_countries_2012,
  d_ns_bochum_tag,
  d_ns_bochum_monat,
  file = "data/data-lecture.Rdata"
)
