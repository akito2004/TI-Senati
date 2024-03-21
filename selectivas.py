"""realizar un programa que te muestre  el promedio  de tres notas  ingresadas por teclado """
"""nota1 = int(input("primera nota: "))
nota2 = int(input("segunda nota: "))
nota3 = int(input("tercera nota: "))

promedio  =(nota1+nota2+nota3)/3

print("el promedio es: ",promedio)"""

#ESTRUCTURAS SELECTIVAS O CONDICIONALES IF Y ELSE

#ejercicio numero 1 .  hallar el meyor de dos  numeros

"""a = int(input("ingrese un numero:"))
b = int(input("ingrese un numero:"))

if a > b:
    print("el mayor numero es: ",a)"""

#ejercicio numero 2 .  hallar una  igualdad de dos numeros (==).
    
"""a = 5
b = 5
if a == b:
    print("los numero son iguales: ",a)"""

 #ejercicio 3. comprobar la diferencia de un nuemero (!=)

"""x = 4
y = 7

if x != y:
    print("x es diferente de y")"""

#operadores logicos como el AND Y OR
#estructuras selectivas dobles
    
#ejercicio numero 1.  realizar un  programa que permita saber  el 
    #el mayor de un numero y el menor de un numero

"""a =int(input("ingrese un numero: "))
b =int(input("ingrese un numero: "))

if a>b: 
    print("es mayor:",a)
else:
    print("es mayor:",b)"""

#realizar un programa que te indique si un mumero es positivo o negativo

"""a = int(input("ingrese un numero"))

if a>0:
 print("el numero espositivo")
else:
 print("el numero es negativo")"""
 #realizar un programa que  que te halle el promedio de un estudiante de tres notas  ingresadas e imprimri si este  aprobo o desaprobo sabiendo que la nota minima es de 13

"""n1 =int(input("ingrese un nota: "))
n2=int(input("ingrese un nota: "))
n3 =int(input("ingrese un nota: "))

promedio=(n1+n2+n3)/3

if promedio>13:
 print("aprobado")
else:
 print("desaprobado")"""

 # realizar un programa donde te indique cuel es el mayor de tres numeros ingresados
"""a=int(input("ingrese un numero:"))
b=int(input("ingrese un numero:"))
c=int(input("ingrese un numero:"))

if a>b and a>c :
 print("el mayor es: ",a)
if b>a and b>c :
 print("el mayor es: ",b)
if c>a and c>b :
 print("el mayor es: ",c)"""

 #realizar un programa que te permita hallar el mayor y el menor de dos numeros 

"""a = int(input("ingresar un numero:"))
b = int(input("ingresar un numero:"))

if a>b:
 print("el mayor es : ",a)
if a<b:
 print("el menor es: ",b)"""
"""__doc__
a=int(input("ingrese un numero:"))
b=int(input("ingrese un numero:"))
c=int(input("ingrese un numero:"))

if a<b and a<c :
 print("el menor es: ",a)
if b<a and b<c :
 print("el menor es: ",b)
if c<a and c<b :
 print("el menor es: ",c)"""
 


 # realizar un programa que te pida un numero  y que te diga si este es par o impar

"""a = int(input("ingrese un numero: "))

if a % 2 == 0:
    print("par")
else:
    print("impar")"""
    # realizar un programa que pregunte a un estudiante su edad  y muestre por pantalla si es mayor de edad o no

"""a = int(input("ingrese su edad:"))

if a>18:
    print("mayor de edad")
if a<18:
    print("menor")"""

#escribe una frase que  que el programa lo imprima de manera invertida 
"""frase = input("ingrese la frase: ")
print(frase[::-1])"""
# realizaar un programa  que te pregunte el nombre y te pida un numero entero  y te imprima el nombre el numero de veces que el usuario haya indicado 

"""nombre = input("ingrese su nombre:  ")
numero = input("ingrese un numero: ")

print((nombre+"\n")*int(numero))"""

# realizar un programa que te permita jugar el piedra papel o tijeras 

"""jugador = input('piedra, papel o tijera ->')
computador = 'papel'

if jugador == computador:
    print("empate")

if jugador =='piedra':
    if computador =='tijera':
        print('piedra gana tijera')
        print('gana jugador')
    else:
        print("papel gana tijera")
        print("el computador gano")"""

#ejercicio 
"""numero = 10
print(numero)

if numero > 0 and numero % 2 ==0:
    print('es positivo y tambien es par')"""

# STRINGS
"""nombre='paul'"""
# STRINGS RECARGADA 
"""print('string recargado')

texto= "el estudiante sabe programar paython"
print('Java Script' in texto)
print('python' in texto)

if 'JS' in texto:
    print('elegiste bien')
else:
    print('tambien elegiste bien')"""

#longitud de caracteres
"""nc =len(texto)
print(nc)
print(texto.upper())
print(texto.lower())
print(texto,count('a'))
print(texto.swapcase())
print(texto.startswith('el'))
print(texto.endswith('python'))
print(texto.replace('pytohn','c++'))"""
#ejemplos 
"""frase = "el cielo es azul y la noche oscura"
print('cielo'in frase)
print('noche'in frase)
nc = len(frase)
print(nc)
print(frase.upper())"""


#...
"""texto = "la meso es redonda y no cuadrada "
print(texto.swapcase())
print(texto.startswith('la'))
print(texto.endswith('cuadrada'))
print(texto.replace('pytohn','c++'))

# listas

numeros=[1,2,3,4]
print(numeros)
print(type(numeros))
juegos=['play station','futbol']
print(juegos)

tipos =[1,True,'hola']
print(tipos)
print(tipos[0]) ..1..2..3 #segun el orden"""

elementos=[1,'casa',False,'lugar',5,True]
print(elementos)
print(elementos[0])

elementos=[1,'casa',False,'lugar',5,True]
print(elementos)
print(elementos[1])

elementos=[1,'casa',False,'lugar',5,True]
print(elementos)
print(elementos[2])

elementos=[1,'casa',False,'lugar',5,True]
print(elementos)
print(elementos[3])

elementos=[1,'casa',False,'lugar',5,True]
print(elementos)
print(elementos[4])

elementos=[1,'casa',False,'lugar',5,True]
print(elementos)
print(elementos[5])
# ejercicico realizar un programa que almacene en una lista los siguientescersos
#algoridmia, base de datos, aplicacones
#que se munustre por pantalla
cursos=['algoridmia','base de datos','aplicaciones']
print(cursos[0])
print(cursos[1])
print(cursos[2])

# metodos de  listas 
numero=[1,2,3,4,5]
print(numero[0])
#quita un elemento de la lista

numero[-1]=10
print(numero)
#agrega un elemento a la lista
numero.append(700)
print(numero)


numero.append(15)
print(numero)

numero.append(50)
print(numero)

numero.append(33)
print(numero)

#inserta un elemento en un lugar en la lista en especifico 
numero.insert(0,'hola')
print(numero)

numero.insert(3,'que tal')
print(numero)

numero.insert(2,'adios')
print(numero)

lista=['hola',10,'parcticar']
#juntra datos de tu lista con una nueva
nueva_lista= numero + lista
print(nueva_lista)

tienda=['bye',5,'tren']

mas_nueva_lista= tienda+nueva_lista
print(mas_nueva_lista)

tienda=['bye',5,'tren']

mas_nueva_lista2= tienda+nueva_lista
print(mas_nueva_lista)

tienda=['bye',5,'tren']

mas_nueva_lista2= tienda+mas_nueva_lista2
print(mas_nueva_lista2)

tienda=['bye',5,'tren']

mas_nueva_lista3= tienda+mas_nueva_lista2
print(mas_nueva_lista3)
#quita un elemento del la lista 
numero.remove(1)
print(numero)
#imprime la lista de manera inversa
numero.reverse()
print(numero)
#elimina el elemeto de la lista
numero.pop(0)
print(numero)

#ejercicio agrega ,  modifica y elimina  elementos de una lista

letras=['a','b','c','d','f']

letras.append(55)
print(letras)

letras.reverse()
print(letras)

letras.pop(3)
print(letras)

letras.insert(2,'adios')
print(letras)