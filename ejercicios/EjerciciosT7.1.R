#Crea un vector llamado Harry formado por la sucesión de números 
#consecutivos entre el -10 y 27. Pídele a R que devuelva el 
#elemento de índice 7. Escribe el resultado.

harry = -10:27
harry

# Da el máximo de la sucesión 100 · 2 ^ n − 7 · 3 ^ n con n = 0, . . . , 200

n = 0:200
f = 100 * 2 ^ n - 7 * 3 ^ n
max(f)

# Crea la sucesión de números consecutivos entre 0 y 40. A 
# continuación, crea el vector 3 · 5 n − 1 con n = 0, . . . , 40. 
# Ponle como nombre x. Ahora, da el subvector de los elementos que 
# son estrictamente mayores a 3.5.

n = 0:40
x = 3 * 5 ^ n - 1
subVector = x[x > 3.5]
subVector

# Crea una función que devuelva la parte real, la imaginaria, 
# el módulo, el argumento y el conjugado de un número, mostrando 
# solo 2 cifras significativas.

# RECOMENDACIÓN: En algún momento hará falta utilizar vectores

part_of_number = function(z) {
  return (
    c(
      real      = signif(Re(z), 2),
      imaginary = signif(Im(z), 2),
      module    = signif(Mod(z), 2),
      argument  = signif(Arg(z), 2),
      set       = signif(Conj(z), 2)
    )
  )
}


z = 3 + 4i
part_of_number(z)

# Crea una función que resuelva ecuaciones de segundo grado 
# (de la forma Ax2 + Bx + C = 0). No importa, por ahora, que 
# tengas en cuenta las ecuaciones de segundo grado que no tienen 
# solución real.
# RECOMENDACIÓN: En algún momento hará falta utilizar vectores

cuadratic_equatations = function(a, b, c) {
  discriminant <- b ^ 2 - 4 * a * c
  
  if (discriminant < 0) {
    return("No real solutions")
  }
  
  x1 <- (-b + sqrt(discriminant) / (2 * a))
  x2 <- (-b - sqrt(discriminant) / (2 * a))
  
  return (c(x1,x2))
}

cuadratic_equatations(1, -3, 2)

# Tomando el vector vec = c(0,9,98,2,6,7,5,19,88,20,16,0), 
# da 3 opciones diferentes para calcular el subvector c(9,19,20,16)
# Tomando el vector vec definido en el apartado anterior, busca
# • qué entradas son pares
# • qué entradas no son pares y mayores que 20
# • dónde toma vec su valor máximo
# • dónde toma vec sus valores mínimos

vec = c(0,9,98,2,6,7,5,19,88,20,16,0)
subVec = vec[which(vec %in% c(9,19,20,16))]
subVec

evenVec = vec[vec %% 2 == 0 & vec != 0]
evenVec

oddAndGreather20Vec = vec[vec %% 2 != 0 & vec > 20]
oddAndGreather20Vec

maxIndex = which.max(vec)
maxIndex

minIndex = which.min(vec)
minIndex

# Da la entrada (2, 2) de A · (A + A) · A, con A = [1, 3, 2, 4]

a = matrix(c(1,2,3,4), nrow = 2, byrow = TRUE)
aPlusa = a + a
result = a %*% aPlusa %*% a
result[2,2]

# Da los valores propios de la matriz B = [2 4 −6 ,0 0 3 ,0 −2 5]

b = matrix(c(2, 0, 0, 4, 0, -2, -6, 3, 5), nrow = 3, byrow = TRUE)
eigenvalues = eigen(b)$values
eigenvalues

# Da, redondeando a 3 cifras decimales, los vectores propios de la matriz
# C = [−48 35 −12, −134 95 −32, −194 133 −44]

c = matrix(c(-48, -134, -194, 35, 95, 133, -12, -32, -44), nrow = 3, byrow = TRUE)
eigenResult = eigen(c)
eigenVectors = round(eigenResult$vectors,3)
eigenVectors

# Da el rango de la matriz 
# D = [−2 −8 −2 3, −3 −6 −1 2, −9 −22 −3 7, −18 −44 −8 15]

d = matrix(c(-2, -3, -9, -18, -8, -6, -22, -44, -2, -1, -3, -8, 3, 2, 7, 15), nrow = 4, byrow = TRUE)
library(Matrix)
rankD = rankMatrix(d)
rankD
