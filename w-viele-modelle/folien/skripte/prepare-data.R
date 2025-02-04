library(readxl)
library(lubridate)
library(tidyverse)

rm(list = ls())

rs_read <- function(n) {
  read.csv(paste0("data/", n), sep = ";", dec = ".") |> 
    mutate(MESS_DATUM = ymd(MESS_DATUM)) |>
    left_join(md, by = "STATIONS_ID") |>
    select(STATION, MESS_DATUM, RS) |>
    filter(year(MESS_DATUM) >= 1931) |>
    na_if(-999)
}

md <- read_xlsx("data/metadaten.xlsx")

rd <- map_dfr(md$DATEI, rs_read) 

save(rd, file = "data/rd.rdata")
