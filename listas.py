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

palabra=input('ingrese la palabra ')

palabra = palabra.lower()

conteo_vocales = ('a':0,'e':0,'i':0,'o':0,'u':0)
for letra in palabra:
     if letra in conteo_vocales:
          conteo_vocales[letra] += 1

for vocal, conteo in conteo_vocales.items():
     if conteo > 0:
          print(f"la vocal {vocal}se repíte {conteo} veces en la palabra. ")

