#ejercicio crear una lista vasia  y agregarle los 5 
#primeros numeos 
"""
lista=[]
lista.append(1)
lista.append(2)
lista.append(3)
lista.append(4)
lista.append(5)

print(lista)
"""

    #creee un programa que  te pida una palabra y te cuente el numero de veces q se repite una vocal

"""palabra=input('ingrese la palabra ')

palabra = palabra.lower()
conteo_vocales = ['a':0,'e':0,'i':0,'o':0,'u':0]

for letra in palabra:
     if letra in conteo_vocales:
          conteo_vocales[letra] += 1

for vocal, conteo in conteo_vocales.items():
     if conteo > 0:
          print(f"la vocal {vocal}se repíte {conteo} veces en la palabra. ")"""
#crea un programa que  te pida por teclado 5 numeros y se guarden  dentro de una lista , imprima la suma total

"""
numero = []

for i in  range (5):
    numero = float(input('ingrese el numero{i+1}: '))
    numeros.append(numero)

suma_total =  suma(numero)

print(f"la suma toital de los  numeros es: {suma_total}")"""

#otraa forma

"""lista =[]
suma=0  

for i in range (5):
    n= int(input('ingrese un numero: '))
    lista.append(n)
    suma=suma+n
print(lista)
print(suma)"""





# crea dos  arrays  unidimenciaonales que tanga el mismo tamaño en uno guardaras los nombres de personas como cadenas y en el otro array la laongitud de los nombres 

"""A = int(input("Ingrese el tamaño de los arreglos: "))
B = []
C = []
for i in range (0,A):
 B.append(input("Ingrese nombre de las personas: "))
print(B)
for j in range (0,A):
 C.append(len(B[j]))
print(C)"""


    


    # crear  una lista  que te permite ingresar numeros al azar en  un rango de 10 numeros  y te muestre los numeros impares mayores a 5
"""import random

nombres = int(input("ingrese los numeros"))
numero_aleatorios = []
for i in range (10):
    numero =random.randint(1, 100)
    numero_aleatorios.append(numero)

numeros_impares_mayores_a_5= {num for num  in  numero_aleatorios if num % 2 != 0 and num >5}

print("numeros impares mayores a 5")
print(numeros_impares_mayores_a_5)"""
    

#otro
"""
numero = []

for i in range (10):
    n = int(input("ingrese un numero->"))
    numero.append(numero)

impares_mayores_5 =[]

for i in numero:
    if numero > 5 and  numero % 2 !=0:
        impares_mayores_5.append(numero)

print("numeros impares a 5 : ",impares_mayores_5)

"""
#resolucion prof
"""
lista =[]
lista2 =[]
 
for i in range (10):
    n = int(input('ingrese un numero ->'))
    lista.append(n)

for i in lista:
    if i>5 and  i%2 != 0:
       lista2.append(i)

print(lista2)"""

#crear un programa que te permita guardar los nombres y dni de multiples personas el admintrador determina cuantas personas c van a guardar imprimir nombre y dni
"""
nombres = []
documentos = []

for i in range (8):
    D= int(input('ingrese su nro de documento->'))
    documentos.append(D)

for i in range (1,100):
    N = int(input('ingrese su nombre->'))
    nombres.append(N)

print(nombres,documentos)"""

#otra


cantidad_de_personas= int(input("ingrese la cantidad de personas  a guardar: "))

personas =[]

for i in range(cantidad_de_personas):
    nombre =input(f"ingrese el nombre de la persona{i+1}:")
    dni = input(f"ingrese el dni de la persona {i+1}:")

print("\nnombre y dni de las personas almacenadas: ")
for nombre, dni in personas . items():
    print(f"nombre:  {nombre}, DNI {dni}")
