library(tidyverse)

# Alles löschen
rm(list = ls())

# Load old files (from first year of lecture)
load(file = "daten-rohdaten/data-lebenserwartung.Rdata")
load(file = "daten-rohdaten/data-svrw.Rdata")
d_le_latest <- ungroup(d_le_latest)

# Speichern
save(d_le_all, d_le_latest, d_svrw, file = "daten/zwei-merkmale-1.Rdata")
