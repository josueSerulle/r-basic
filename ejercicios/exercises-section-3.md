# Escribe una secuencia de instrucciones que permitan leer un número real por pantalla y que muestre si el número es positivo o no.


```python
number = int(input("Digite un numero real: "))

if number == 0:
    print("EL numero 0 no es negativo ni postivo.")
elif number > 0:
    print("El numero {} es positivo.".format(number))
else:
    print("El numero {} es negativo.".format(number))
```

    Digite un numero real:  -2
    

    El numero -2 es negativo.
    

# Escribe una secuencia de instrucciones que permitan leer un número real por pantalla y que muestre si el 
# número está en el rango entre −5 y 5, ambos incluidos.


```python
number = int(input("Digite un numero real: "))

if -5 <= number <= 5:
    print("el numero {} esta dentro del rango de -5 a 5.".format(number))
else:
    print("el numero {} no esta dentro del rango de -5 a 5.".format(number))
```

    Digite un numero real:  10
    

    el numero 10 no esta dentro del rango de -5 a 5.
    

# Escribe una secuencia de instrucciones que permitan leer las coordenadas de un punto (x, y) e indique en
# cuál de los cuatro cuadrantes se encuentra dicho punto.
# Si x = 0, deberás indicar que el punto se encuentra sobre el eje vertical.
# Si y = 0, deberás indicar que el punto se encuentra sobre el eje horizontal.
# Si tanto x = 0 como y = 0, entonces deberás indicar que el punto se trata del origen de coordenadas.


```python
"""Determina en qué cuadrante o eje se encuentra un punto dado."""
def determinar_cuadrante(x: float, y: float) -> str:
    if x == 0 and y == 0:
        return "El punto se encuentra en el origen de coordenadas."
    elif x == 0:
        return "El punto se encuentra sobre el eje vertical."
    elif y == 0:
        return "El punto se encuentra sobre el eje horizontal."
    elif x > 0 and y > 0:
        return "El punto se encuentra en el primer cuadrante."
    elif x < 0 and y > 0:
        return "El punto se encuentra en el segundo cuadrante."
    elif x < 0 and y < 0:
        return "El punto se encuentra en el tercer cuadrante."
    else:
        return "El punto se encuentra en el cuarto cuadrante."

try:
    x = float(input("Ingrese la coordenada x: "))
    y = float(input("Ingrese la coordenada y: "))
    print(determinar_cuadrante(x, y))
except ValueError:
    print("Por favor, ingrese valores numéricos válidos.")
```

    Ingrese la coordenada x:  1
    Ingrese la coordenada y:  0
    

    El punto se encuentra sobre el eje horizontal.
    

# Escribe una secuencia de instrucciones que permitan leer dos números enteros y muestre el cociente de la# 
división entera y el resto de la división entera.

try:
    a = int(input("Ingrese el primer número entero: "))
    b = int(input("Ingrese el segundo número entero: "))
    
    if a == 0 and b == 0:
        print("No se puede dividir por cero.")
    else:
        print(f"Cociente: {a // b}, Resto: {a % b}")
except ValueError:
    print("Por favor, ingrese valores numéricos válidos.")


# Escribe una secuencia de instrucciones que permitan leer un número entero y determinar si es cuadrado
# perfecto o no (piensa la mejor forma de hacerlo con lo que has aprendido hasta ahora)


```python
import math

try:
    n = int(input("Digite un numero: "))

    if n < 0:
        print("Un número negativo no puede ser un cuadrado perfecto.")
    else:
        raiz = int(math.sqrt(n))
        
        if raiz ** 2 == n:
            print(f"{n} es un cuadrado perfecto.")
        else:
            print(f"{n} no es un cuadrado perfecto.")

except ValueError:
    print("Por favor, ingrese valores numéricos válidos.")
```

# Escribe una expresión que permita determinar si un número entero positivo puede corresponder a un año# 
bisiesto o no. Se consideran años bisiestos aquellos cuyo número es divisible por cuatro excepto los años que# 
son múltiplos de 100, a no ser que lo sean de 400 (por ejemplo el año 2000 fue bisiesto pero el 2100 no  o
será).


```python
try:
    year = int(input("Digite un año: "))

    if (year % 4 == 0 and year % 100 != 0) or year % 400 == 0:
        print(f"El año {year} es bisiesto")
    else:
        print(f"El año {year} no es bisiesto")
except ValueError:
    print("Por favor, ingrese valores numéricos válidos.")
```

    Digite un año:  1999
    

    El año 1999 no es bisiesto
    

# Busca la imagen de un tablero de ajedrez en Google y fíjate en la nomenclatura de las casillas. Escribe una
# secuencia que lea una letra y un número de teclado correspondiente a una casilla de un tablero de ajedrez y
# que indique si esta casilla es negra o blanca


```python
 try:
    column = input("Ingrese la letra de la columna (a-h): ").lower()
    row = int(input("Ingrese el número de la fila (1-8): "))

    columnsLetter = "abcdefgh"

    if column not in columnsLetter or not (1 <= row <= 8):
        print("Entrada inválida. Por favor, ingrese una columna de 'a' a 'h' y una fila de 1 a 8.")
    else:
        columnNum = columnsLetter.index(column) + 1
    
        if (columnNum + row) % 2 == 0:
             print("La casilla es negra.")
        else:
            print("La casilla es blanca.")
except ValueError:
    print("Entrada inválida. Asegúrese de ingresar una letra para la columna y un número entero para la fila.")
```

    Ingrese la letra de la columna (a-h):  a
    Ingrese el número de la fila (1-8):  1
    

    La casilla es negra.
    


```python

```
