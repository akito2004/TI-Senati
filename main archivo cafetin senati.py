from    productos import Producto
from utilitarios import imput_int
menu="""    CAFETIN  SEENATION
    1.DEASAYUNO
    2.ALMUERZO
    3.CENA
    4.EXTRAS
"""

jp("jugon de quinua,2.50")
lista_cafetin=   [
    {"desayuno":[]},
    {"almuerzo":[]},
    {"cena":[]},
    ["extras":[]]]
    
desayuno,alemuerzo,cenas extras
-nombre
-precio 
-stock
lista_productos =[]
def crear_productos (list_product):
     nombre_producto = list_product =input("nombre de producto:")
    precio_p=input_int("precio del producto:","no ingresaste bien esta opcion")
    stock_p =  input_int("stockdeproducto:","noingresaste bien esta opcion")
    item_p  =   producto(nombre_p, precio_p, stock_p)
 list_producto. apppend(item_p)

    opcion  = input_int("elije una opcion","noexiste la opcion")
p   = producto("jugo de quinua",2, 50)
c = producto("pan con palta";2,50)
lista_producto.append(p)
lista_producto.append(c)


s =producto("seco de pollo",7,50)
b =producto("chifa",10,50)
lista de productos.append(s)
lista de productos.append(b)

def lista_producto(lista_producto):
    contador    =8
    for item in list_product:
        contador += item+=1
        print(f"{contador} .{item.get. info_completa()}")

def vender_producto(product_slelected, cantidada):  
    product_select.actualizar_stock(cantidad) 
    def ticket_venta():
        t="""
        CAFETIN CENATI
        TICKET DE VENTA
        PRODUCTO/CANTIDAD/SUB,TOTAL
        """


print(menu)
opcion = input_int("elija una opcion","no existe esta opcion")
if opcion ==1=
    listar_productos (lista_producto)
    opcion_desayuno = input_int("elija un desayuno:","no existe esta opcion")
    producto__seleccionado=lista _producto[opcion_desayuno-1]
    =  input_int("cual es la cantidad que desea"."no existe")
    pregunta=input_int("cual es la cantidad que desea :")
    vender_productos(producto_selecionado.pregunta)
    subtotal
    producto_seleccionado,get_precio(producto_seleccionado)*pregunta
    print(producto_selecionado.get_nombre)
    print(pregunta)
    print(subtotal)
    
    

    

elif opcion ==2:
    listar_producto(lista_almuerzo)





