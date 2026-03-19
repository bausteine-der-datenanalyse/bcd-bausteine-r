- Dataframe anzeigen

  ```{r}
    gt(d) |> fmt_number(decimals = 3) |> opt_interactive()
  ```