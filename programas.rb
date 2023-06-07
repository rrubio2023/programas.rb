# Requerimientos
# 1. Requerimiento 1, se solicita un programa que mediante el uso de métodos permita
# calcular el nuevo salario de un colaborador/a en función de un porcentaje mínimo de
# aumento establecido.
# (4 Puntos)
# 2. Requerimiento 2, te solicitan un programa que simule el juego de “Adivina el
# número”. En este programa el computador va a elegir un número aleatorio y el
# usuario al seleccionar un número debe indicarle si ganó o perdió. La condición para
# ganar es que el número del computador debe ser igual al del jugador.
# El rango de número va entre 1 hasta n, tomando en consideración que mientras más
# amplio sea el rango más duradero será el juego.
# (4 Puntos)
# 3. Requerimiento 3, utilizando como base el ejercicio de cálculo de IMC en la guía de
# ejercicios, agregar en el cálculo de Obesidad los elementos faltantes dado que la
# obesidad se subdivide en 3 niveles. Deberás agregar a la lógica condicional los
# cálculos para esos tres niveles.
# (2 Puntos)
# ¡Mucho éxito!
# Consideraciones y recomendaciones
# ● Requerimiento 1, fórmula salario + (salario * (incremento / 1000))
# ● Requerimiento 2,
# ○ Utiliza el método .rand para generar números aleatorios.
# ○ Implementa el ciclo más conveniente para lograr la lógica del ejercicio.
# ● Requerimiento 3, te compartimos los datos para las subcategorías asociadas a la
# obesidad.
# ○ Obesidad grado I: 30 - 34.9 - Moderado
# ○ Obesidad grado II: 35 - 39.9 - Severo
# ○ Obesidad grado III: Más de 40 - Muy severo



#1
def calcular_nuevo_salario(salario, incremento)
  nuevo_salario = salario + (salario * (incremento / 100.0))
  return nuevo_salario
end

print "Ingresar el salario actual: "
salario_actual = gets.chomp.to_f


print "Ingresar el porcentaje de incremento: "
porcentaje_incremento = gets.chomp.to_f

nuevo_salario = calcular_nuevo_salario(salario_actual, porcentaje_incremento)
puts "El nuevo salario es: #{nuevo_salario}"


#2

def adivina_el_numero(n)
  numero_secreto = rand(1..n)

  puts "¡Juega a 'Adivina el número'!"
  puts "Estoy pensando  un número del 1 al #{n}."
  puts "¿Puedes adivinar cuál es?"

  while true
    print "Ingresa un número: "
    numero_usuario = gets.chomp.to_i

    if numero_usuario == numero_secreto
      puts "¡Felicidades! ¡Adivinaste el número!"
      break
    elsif numero_usuario > numero_secreto
      puts "Demasiado alto. Intentalo nuevamente."
    else
      puts "Demasiado bajo. Intentalo nuevamente."
    end
  end
end

print "Ingresa un numero máximo para jugar"
rango_maximo = gets.chomp.to_i

adivina_el_numero(rango_maximo)

#3
def calcular_imc(peso, altura)
  imc = peso / (altura ** 2)

  if imc < 18.5
    categoria = "Bajo peso"
  elsif imc >= 18.5 && imc < 25
    categoria = "Normal"
  elsif imc >= 25 && imc < 30
    categoria = "Sobrepeso"
  elsif imc >= 30 && imc < 35
    categoria = "Obesidad grado I (Moderado)"
  elsif imc >= 35 && imc < 40
    categoria = "Obesidad grado II (Severo)"
  else
    categoria = "Obesidad grado III (Muy severo)"
  end

  return imc, categoria
end


print "Ingresa tu peso en kg: "
peso = gets.chomp.to_f


print "Ingresa tu altura en metros: "
altura = gets.chomp.to_f

imc, categoria = calcular_imc(peso, altura)
puts "Tu IMC es: #{imc.round(2)}"
puts "Categoría: #{categoria}"
