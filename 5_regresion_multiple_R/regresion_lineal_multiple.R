# ==============================================================================
# Práctica 5: Regresión Lineal Múltiple en R
# Caso: Jenny Wilson Realty (Páginas 14 y 15)
# Modelo: Y = b0 + b1*X1 + b2*X2
# ==============================================================================

# Paso 1: Definir los vectores de datos
precio <- c(95000, 119000, 124800, 135000, 142800, 145000, 159000, 
            165000, 182000, 183000, 200000, 211000, 215000, 219000)

pies_cuadrados <- c(1926, 2069, 1720, 1396, 1706, 1847, 1950, 
                    2323, 2285, 3752, 2300, 2525, 3800, 1740)

antiguedad <- c(30, 40, 30, 15, 32, 38, 27, 30, 26, 35, 18, 17, 40, 12)  

# Paso 2: Crear el Data Frame
datos_casas <- data.frame(precio, pies_cuadrados, antiguedad)
print("--- Datos de las casas ---")
print(head(datos_casas))

# Paso 3: Ajustar el modelo de regresión múltiple usando lm()
modelo_multi <- lm(precio ~ pies_cuadrados + antiguedad, data = datos_casas)

# Paso 4: Coeficientes del modelo
print("--- Coeficientes del modelo ---")
print(modelo_multi)

# Paso 5: Resumen estadístico detallado
print("--- Resumen detallado (Summary) ---")
summary(modelo_multi)

# Paso 6: Calcular el precio pronosticado para un nuevo caso
# Ejemplo: Casa de 2,000 pies cuadrados y 10 años de antigüedad
nueva_casa <- data.frame(pies_cuadrados = 2000, antiguedad = 10)
precio_estimado <- predict(modelo_multi, newdata = nueva_casa)

# Paso 7: Mostrar predicción
cat("\n--- Predicción de nueva casa (2000 sq ft, 10 años) ---\n")
print(precio_estimado)
