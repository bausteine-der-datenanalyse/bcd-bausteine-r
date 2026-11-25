library(readxl)
library(tidyverse)

# Verkehrszeiten nach Stunde: Schwach-, Haupt- und Nebenverkehrszeit
verkehrszeit <- function(stunde) {
  case_when(
    stunde < 6 | stunde >= 18 ~ "SVZ",
    stunde %in% c(6, 7, 12, 13, 16, 17) ~ "HVZ",
    .default = "NVZ"
  )
}

d <- read_excel(
  "_daten-rohdaten/unistrasse-2017.xlsx",
  sheet = "raw(T)",
  range = "B2:H20712"
)

d_unistrasse <- d |>
  mutate(
    Datum = dmy_hms(Datum),
    Tag = factor(wday(Datum), levels = 1:7, labels = c("So", "Mo", "Di", "Mi", "Do", "Fr", "Sa"), ordered = TRUE),
    Uhrzeit = hour(Datum) + minute(Datum) / 60 + second(Datum) / 3600,
    VZ = verkehrszeit(hour(Datum))
  ) |>
  select(Datum, Tag, Uhrzeit, VZ, Fahrzeug, Geschwindigkeit)

save(d_unistrasse, file = "daten/data-exercise-06.Rdata")
