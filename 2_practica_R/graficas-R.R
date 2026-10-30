promedios <- c(8.5, 7.2, 9.1, 6.8, 8.9)
grupos <- c("Grupo A", "Grupo B", "Grupo C", "Grupo D", "Grupo E")

# Dibujar barras
bp <- barplot(
  promedios,
  names.arg = grupos,
  col = "steelblue",
  main = "Promedios por Categoría",
  ylab = "Promedio",
  ylim = c(0, 10.5)
)

# Añadir valores sobre cada barra y línea de media
text(x = bp, y = promedios + 0.4, labels = promedios, font = 2)
abline(h = mean(promedios), col = "red", lty = 2, lwd = 2)
