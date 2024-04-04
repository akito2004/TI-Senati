import random

options = ('piedra','papel','tijera')
rounds=1
ordenador_wins= 0
user_wins=0

print("""bienvenidos al juego piedra, papel y tijera 
      >>>ingresar opcion<<<
""")

while True:
    print('***',*10)
    print('round', rounds)
    print('==='*10)
    print(f'''
       ordenadorwins : {ordenador_wins}
       user winds :  {user_wins}
    ''')

    user_option = input('ingrese  >>> piedra,papel o tijera<<<').lower()
    rounds += 1

    if not user_option in options:
     
     print('esa opcion no es valida')

    ordenador_option =random.choice(options)

    print('user_option ->',user_option)
    print('user option ->',ordenador_option)
 
    if user_option == 'piedra':  
    
        if ordenador_option == 'tijera':
          print('piedra gana tijera')
          print('usuario gana \n')
        else:
          print('papel gana piedra')
          print('ordenador wins')
    if user_option =='tijera':
        if ordenador_option =='papel':
          print('tijera gana  a papel')
          print('user gana\n')
        else:
          print('piedra gana tijera')
          print('ordenador_wins')

    if user_option == 'papel':
        if ordenador_option == 'piedra':
          print('tijera gana a papel')
          print('ordenador wins')
          ordenador_wins += 1
        
    if ordenador_wins == 3:
          print('el ordenador es el ganador')

    if user_wins == 3:
          print('el susuario es el ganador ')


