# install.packages("quarto")
styler::style_dir(filetype = "qmd")

rmds <- list.files(pattern = "qmd$")

for (i in rmds) {
  try(quarto::quarto_render(i), silent = TRUE)
}
