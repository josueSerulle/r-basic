############################
# Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el 
# inicio de 2018, ¿aqué hora de qué día de qué año llegaríamos a los 250 millones de segundos? 
# ¡Cuidado con los años bisiestos!
############################

final_date = as.POSIXct("2018-01-01 00:00:00", tz = "UTC") + 250000000
final_date

############################
# Crea una función en R que resuelva una ecuación de primer grado (de la forma Ax + B = 0). 
# Es decir, los parámetros deben ser los coeficientes (en orden) y la función tiene que devolver 
# la solución. Por ejemplo, si la ecuación es 2x + 4 = 0, la función tendría que devolver -2.

# Una vez creada la función, utilízala para resolver las siguientes ecuaciones de primer grado:
# 5x + 3 = 0
# 7x + 4 = 18
# x + 1 = 1
############################

simpleEquation = function(a, b, c = 0) {
  if(a == 0) {
    if(b == 0){
      return("The equation has infinitely many solutions (it is an identity).")
    } 
    
    return("The equation has no solution (it is inconsistent).")
  }
  
  return(-(b - c) / a)
}
simpleEquation(7, 4, 18)

############################
# Da una expresión para calcular 3e−π con R y a continuación, da el resultado 
# obtenido redondeado a 3 cifras decimales.
############################

result = round(3 * exp(1) - pi, 3)
result

############################
# Da una expresión para calcular el módulo del número complejo (2 + 3i) ^ 2 / (5 + 8i)
# y, a continuación, da el resultado obtenido redondeado a 3 cifras decimal
############################

numerator   = complex(real = 2, imaginary = 3)
denominator = complex(real = 5, imaginary = 8)

result = Mod((numerator ^ 2) / denominator)
result = round(result, 3)
result
