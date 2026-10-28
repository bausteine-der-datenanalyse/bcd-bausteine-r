- Dataframe anzeigen

  ```{r}
    gt(d) |> fmt_number(decimals = 3) |> opt_interactive()
  ```
- Namen von Merkmalen (Spalten) klein und in snake_case, z. B. `jahr`, `antrieb`, `niederschlag_mm`.
  Ausnahme: abstrakte Merkmale in Beispielen mit einzelnen Großbuchstaben (`A`, `B`, `X`, `Y`).
