library(gt)

# Dataframes als interaktive gt-Tabelle ausgeben, sehr lange nur Anfang und Ende
knit_print.data.frame <- function(x, options, ...) {
  if (nrow(x) < 20000) {
    tab <- gt(x)
  } else {
    tab <- gt_preview(x)
  }
  tab |>
    fmt_number(
      columns = where(is.double),
      decimals = 3,
      drop_trailing_zeros = TRUE,
      use_seps = FALSE
    ) |>
    opt_interactive(
      use_text_wrapping = FALSE,
      page_size_default = 9,
      use_compact_mode = TRUE,
      use_pagination = (nrow(x) > 9 & nrow(x) < 20000)
    ) |>
    knitr::knit_print(options, ...)
}
registerS3method(
  "knit_print",
  "data.frame",
  knit_print.data.frame,
  envir = asNamespace("knitr")
)
