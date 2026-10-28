library(gt)

# Dataframes als gt-Tabelle ausgeben, interaktiv nur wenn sie nicht auf eine Folie passen, sehr lange nur Anfang und
# Ende
knit_print.data.frame <- function(x, options, ...) {
  n <- nrow(x)
  tab <- if (n < 20000) gt(x) else gt_preview(x)
  tab <- tab |>
    fmt_number(
      columns = where(is.double),
      decimals = 3,
      drop_trailing_zeros = TRUE,
      use_seps = FALSE
    )
  if (n > 9 && n < 20000) {
    tab <- tab |>
      opt_interactive(
        use_text_wrapping = FALSE,
        page_size_default = 9,
        use_compact_mode = TRUE,
        use_pagination = TRUE
      )
  }
  knitr::knit_print(tab, options, ...)
}
registerS3method(
  "knit_print",
  "data.frame",
  knit_print.data.frame,
  envir = asNamespace("knitr")
)
