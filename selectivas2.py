#relizar una lista con 10 valores asignados o aleatorios
#y imprimir el cuadrado de cada elemento de la lista

"""lista=[2,3,4,5,6,7,9,8,10,1]
  
print(lista[0]**2)
print(lista[1]**2)
print(lista[2]**2)
print(lista[3]**2)
print(lista[4]**2)
print(lista[5]**2)
print(lista[6]**2)
print(lista[7]**2)
print(lista[8]**2)
print(lista[9]**2)
print(lista[10]**2)"""

"""import fandom
lista =[]
for indice in range(1,11):
    lista.append(fandom.randint(1,10))
for numero in lista:
    print(numero,"",numero** 2)"""

#tuplas
    
"""numero =(1,2,3,4)
string =('nico','juan','santiago')

print(numero)

print(type(numero))
print(type(string))

#crud

print(numero)"""

#numero[1]='change'
"""print(numero.index(1))
print(numero.count(2))

print(string.index())
print(string.count())"""

#Diccionario
"""my_diccionario = {
     'avion':'transporte aereo',
     'nombre':'personas',
     'lista_nombre':'alumno',
     'edad':20  

}

print(my_diccionario)
print(len(my_diccionario))

print(my_diccionario['avion'])
print(my_diccionario['nombre'])
print(my_diccionario['lista_nombre'])
print(my_diccionario['edad'])

print(my_diccionario.get('edad'))

print('avion'in my_diccionario)
print('nombre'in my_diccionario)
print('lista_nombre'in my_diccionario)
print('edad'in my_diccionario)

print('diego' in my_diccionario)

#diccionario insercion y actualizacion

persona={
    'nombre':['nico'],
    'nombre_alumno':'segundo semestre',
    'cursos':['javaScript','python']

}
print(persona)

print(persona)
persona['nombre_alumno'] ='octavio xD'
persona['cursos'] ='papaliza'
print(persona)

persona['nombre'] ='yuliza'
persona['cursos'].append('siuuuuu')
print(persona)

persona['nombre'].append('juan')
persona['nombre'].remove('nico')
persona['nombre_alumno']='segndo semestre'
persona['nombre'].append('paul')
print(persona)

alumno ={
    'nombre':'paul',
    'apellido':['alcos'],
    'edad':20


}
print(alumno)




alumno['nombre']= 'david'
alumno['apellido'].append('cruz')
alumno['apellido'].remove('alcos')

print(alumno)

#estructuras repetitivas while
#while True:
    #print('se ejecuta')
contador= 0

while contador<10:
    contador += 1
    print(contador)

while contador<15:
    contador += 1
    print(contador)

while contador<20-5:
    contador += 1 
    print(contador)

#while contador< 20:
 #   contador += 1
  #  if contador ==15:
   #     break
    #print(contador)
while contador < 20:
    contador += 1
    if contador <15:
        continue
    print(contador)"""


#imprima los 20 primeros numero pares 
"""contador=0"""
"""while contador < 20:
    contador += 2
    print(contador)
contador=1 

while contador < 40:
    contador += 2

    print(contador)"""

#estructura for

#for numero in range(10):
    #print(numero)
my_lista = [23,14,16,20]
for elementos in my_lista:
    print(elementos)

my_tupla = ('carro','bicicleta','computador')
for indice in my_tupla:
 print(indice)