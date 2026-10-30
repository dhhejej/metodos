# Métodos Cuantitativos - Prácticas de Código

Repositorio con la implementación de las prácticas de la materia de Métodos:

| No. | Práctica | Lenguaje / Herramienta | Contenido |
|---|---|---|---|
| **1** | Práctica Pandas (Sexenios) | Python / Pandas / PostgreSQL | Cálculo de media, varianza y desviación estándar sobre cotizaciones de sexenios. |
| **2** | Práctica en R (Sexenios) | R / ggplot2 / RPostgres | Gráficas de evolución USD/MXN y análisis estadístico de sexenios. |
| **3** | Modelo de Punto de Equilibrio | Excel (.xlsx, .xls) & Python | Cálculo del punto de equilibrio y ganancias en hoja de cálculo y script interactivo. |
| **4** | Regresión Lineal Simple | Python (con Docstrings) | Estimación de pendiente ($b_1$), intersección ($b_0$), ecuación de la recta y función de predicción documentadas con docstrings. |
| **5** | Regresión Lineal Múltiple | R | Ajuste de modelo múltiple con `lm()`, `summary()` e inferencia/predicción para nuevos datos. |

---

## Estructura del Repositorio

- **`1_pandas_sexenios/`**
  - `pandas-ejemplo.py`: Conexión a BD y cálculo de estadísticos con Pandas.
  - `sexenio1.csv`, `sexenio-2018-2024.csv`: Datasets históricos.
- **`2_practica_R/`**
  - `r-grafica-usd-mxn.R`: Gráfica temporal con `ggplot2`.
  - `practica_sexenios.R`: Cálculo de media, varianza y desviación estándar en R.
  - `graficas-R.R`: Gráficas de barras comparativas.
  - `usd_mxn.csv`: Dataset de tipo de cambio.
- **`3_modelo_punto_equilibrio/`**
  - `punto_equilibrio.py`: Script interactivo en Python para cálculo de finanzas.
  - `punto_equilibrio.xlsx` / `modelo_punto_equilibrio.xls`: Modelos en hoja de cálculo con fórmulas financieras.
- **`4_regresion_python/`**
  - `regresion_Lineal.py`: Código modular de regresión lineal documentado con docstrings estándar.
- **`5_regresion_multiple_R/`**
  - `regresion_lineal_multiple.R`: Script ejecutable en R del modelo múltiple.
  - `analisis regresion multiple.html`: Guía técnica y explicación detallada.
