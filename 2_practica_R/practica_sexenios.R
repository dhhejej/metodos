# ==============================================================================
# Práctica 2: Análisis de Sexenios en R (Media, Varianza, Desviación Estándar)
# ==============================================================================

# Opción A: Lectura desde CSV local (usd_mxn.csv / sexenio)
archivo_csv <- if (file.exists("usd_mxn.csv")) {
  "usd_mxn.csv"
} else if (file.exists("2_practica_R/usd_mxn.csv")) {
  "2_practica_R/usd_mxn.csv"
} else {
  "/home/jahir/Descargas/usd_mxn.csv"
}

if (file.exists(archivo_csv)) {
  datos <- read.csv(archivo_csv, stringsAsFactors = FALSE)
  cotizaciones <- as.numeric(datos$price)
  cotizaciones <- cotizaciones[!is.na(cotizaciones)]
  
  cat("--- Estadísticas del Sexenio (R) ---\n")
  cat("Media: ", mean(cotizaciones), "\n")
  cat("Varianza: ", var(cotizaciones), "\n")
  cat("Desviación Estándar: ", sd(cotizaciones), "\n")
}

# Opción B: Conexión a Base de Datos PostgreSQL (metodos_db)
conectar_postgres <- function() {
  if (require("DBI") && require("RPostgres")) {
    conexion <- dbConnect(
      RPostgres::Postgres(),
      dbname = "metodos_db",
      host = "localhost",
      port = 5432,
      user = "metodos",
      password = "ultr4s3cr3t0"
    )
    datos_db <- dbGetQuery(conexion, "SELECT * FROM cotizaciones")
    print(head(datos_db))
    cotizaciones_db <- as.numeric(datos_db$cotizacion)
    print(paste("Media:", mean(cotizaciones_db, na.rm = TRUE)))
    print(paste("Varianza:", var(cotizaciones_db, na.rm = TRUE)))
    print(paste("Desviación estándar:", sd(cotizaciones_db, na.rm = TRUE)))
    dbDisconnect(conexion)
  }
}
