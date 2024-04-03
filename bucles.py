#escribir un programa que pregunte al usuario su edaad  y muestre  por pantalla  todos los años que a cumplido FOR

"""edad  =int(input('¿cuanto años tienes?'))
for i in  range(edad):
    print("has cumplido"+""+ str(i+1)+""+"años")"""

    #realiza un programa  que pida al usuario un nuemro y mmuestre por patalla  los numero impares

"""i=int(input("ingrese  un numero:"))
for i in range (1,10,2):
    print(i)"""


"""i=int(input("ingrese  un numero:"))

for i in range (10,1,-1):
    print(i)"""
#escribir un programa que te muestre una tabla de multiplicar 

"""numero=int(input("ingrese un numero"))
print(f"tabla de multificar el{numero}: ")
for i in  range (1, 10):
    resultado = numero * i
    print(f"{numero} x {i}={resultado}")"""

#otra forma 

"""for i in range (1,11):
    mult = 5 * i
    print(f'5 x{i}= {mult}')"""

    #realiza un programa que pida al usuario ingresar distintos numeros hasta que ingrese el numero 0 entonces termina el programa y te muestre la suma de los numero ingresados 
"""suma=0

while True:
    numero=int(input("ingresa numero"))
   
    if numero== 0:
        break
    else:
        numero+=suma
        print(f"la suma de los numeros ingresa es:{suma}")"""

    
#piedra papel tijeraas pero con tres rounds

import random

computador = random.choices(['piedra','papel','tijera'])
jugador = input('piedra, papel o tijera ->')
computador = 'papel'

if jugador == computador:
    print("empate")

if jugador =='piedra':
    if computador =='tijera':
        print('piedra gana tijera')
        print('gana jugador')
    else:
        print("papel gana tijera")
jugador = input('piedra, papel o tijera ->')
computador = 'papel'

if jugador == computador:
    print("empate")

if jugador =='piedra':
    if computador =='tijera':
        print('piedra gana tijera')
        print('gana jugador')
    else:
        print("papel gana tijera")
        print("el computador gano")
jugador = input('piedra, papel o tijera ->')
computador = 'papel'
if jugador == computador:
    print("empate")

    if jugador =='piedra':
      if computador =='tijera':
        print('piedra gana tijera')
        print('gana jugador')
    else:
        print("papel gana tijera")
        print("el computador gano")
        