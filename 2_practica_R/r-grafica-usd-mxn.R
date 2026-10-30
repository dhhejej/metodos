install.packages("ggplot2")

 library(ggplot2)

datos <- read.csv("/home/jahir/Descargas//usd_mxn.csv")
datos$quotation_date <- as.Date(datos$quotation_date)

ggplot(datos, aes(x = quotation_date, y = price)) +
  geom_line(color = "#2b5c8f", linewidth = 1) +
  labs(
    title = "Evolución USD / MXN",
    x = "Fecha",
    y = "Precio (MXN)"
  ) 
  theme_minimal()
