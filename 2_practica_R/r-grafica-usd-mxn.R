# Práctica 2 en R: Gráfica de evolución USD / MXN

if (!require("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
  library(ggplot2)
} else {
  library(ggplot2)
}

# Cargar dataset (usa ruta relativa local)
archivo_csv <- if (file.exists("usd_mxn.csv")) {
  "usd_mxn.csv"
} else if (file.exists("2_practica_R/usd_mxn.csv")) {
  "2_practica_R/usd_mxn.csv"
} else {
  "/home/jahir/Descargas/usd_mxn.csv"
}

datos <- read.csv(archivo_csv)
datos$quotation_date <- as.Date(datos$quotation_date)

grafica <- ggplot(datos, aes(x = quotation_date, y = price)) +
  geom_line(color = "#2b5c8f", linewidth = 1) +
  labs(
    title = "Evolución USD / MXN",
    x = "Fecha",
    y = "Precio (MXN)"
  ) +
  theme_minimal()

print(grafica)
