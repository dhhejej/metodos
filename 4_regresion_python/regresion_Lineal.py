# Práctica 4: Regresión Lineal Simple en Python (con docstrings)

# Datos de prueba comentados en la práctica:
# x = [3, 4, 6, 4, 2, 5]
# y = [6, 8, 9, 5, 4.5, 9.5]
# x = [5, 3, 7, 2, 8]
# y = [11, 6, 10, 6, 12]
# x = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# y = [60, 65, 70, 75, 80, 85, 90, 95, 100, 105]

def media(x):
    """Calcula la media aritmética de una lista o serie de datos numéricos.

    Parámetros:
        x (list): Lista de valores numéricos.

    Retorna:
        float: Promedio de los valores contenidos en la lista.
    """
    return sum(x) / len(x)

def diferencia_cuadrado(x):
    """Calcula la suma de cuadrados de las diferencias respecto a la media (SCx).

    Parámetros:
        x (list): Lista de valores de la variable independiente.

    Retorna:
        float: Sumatoria de (x_i - media(x))^2.
    """
    la_media = media(x)
    la_diferencia = 0
    for i in x:
        la_diferencia = la_diferencia + (i - la_media) * (i - la_media)
    return la_diferencia

def diferencia_xy(x, y):
    """Calcula la suma de los productos cruzados de las desviaciones (SPxy).

    Parámetros:
        x (list): Lista de valores de la variable independiente X.
        y (list): Lista de valores de la variable dependiente Y.

    Retorna:
        float: Sumatoria de (x_i - media(x)) * (y_i - media(y)).
    """
    mediax = media(x)
    mediay = media(y)
    lista_xy = [(a - mediax) * (b - mediay) for a, b in zip(x, y)]
    sumatoria = sum(lista_xy)
    return sumatoria
    
def obtener_b1(x, y):
    """Calcula la pendiente (b1) de la recta de regresión lineal.

    Parámetros:
        x (list): Lista de valores de la variable independiente X.
        y (list): Lista de valores de la variable dependiente Y.

    Retorna:
        float: Pendiente b1 = SPxy / SCx.
    """
    diferencia = diferencia_xy(x, y)
    diferencia_cuadrados = diferencia_cuadrado(x)
    return diferencia / diferencia_cuadrados

def obtener_b0(x, y):
    """Calcula la intersección con el eje Y (b0) de la recta de regresión.

    Parámetros:
        x (list): Lista de valores de la variable independiente X.
        y (list): Lista de valores de la variable dependiente Y.

    Retorna:
        float: Intersección b0 = media(y) - b1 * media(x).
    """
    mediay = media(y)
    mediax = media(x)
    b1 = obtener_b1(x, y)
    return mediay - (b1 * mediax)

# --- Datos de prueba ---
x = [3, 4, 6, 4, 2, 5]
y = [6, 8, 9, 5, 4.5, 9.5]

# --- Cálculo de b1 y b0 manteniendo tus variables ---
spc = diferencia_xy(x, y)
scx = diferencia_cuadrado(x)
my = media(y)
mx = media(x)

b1 = spc / scx
b0 = my - (b1 * mx)

print(f"Pendiente (b1): {b1}")
print(f"Intersección (b0): {b0}")
print(f"Ecuación: Ŷ = {b0} + {b1}X")

def predecir_y():
    """Solicita un valor de X por consola y predice el valor de Y usando la ecuación ajustada.

    Retorna:
        float: Valor estimado de Y para el valor de X ingresado.
    """
    x_ingresado = float(input("\nIngresa el valor de x para predecir y: "))
    y_resultado = b0 + (b1 * x_ingresado)
    print(f"Para X = {x_ingresado}, el valor predicho de Y es: {y_resultado}")
    return y_resultado

if __name__ == "__main__":
    predecir_y()
