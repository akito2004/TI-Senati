def crearproduntos(lista_productos)
    flag=True
    while flag:
        try:
            nombreproducto  =   input("nombre del producto:")
            marcaproducto   =   int(input("marca del producto:"))
            cantidadproducto =   int(input("cantidad del producto:")) 
        except  ValueError:
            print("algo salio mal intentalo otra vez")
        else:
            producto["nombre"]= nombreproducto    
            producto["marca"]=  marcaproducto
            producto["cantidad"]=    cantidadproducto
            lista_productos.append(producto)
            producto    =   {}
            pregusta    =   input("desea agregar mas Produstos? si/no")
            if  str(pregusta)  I  ="si"
                flag    = false 
            print

    return  lista_productos


def listaproductos(lista_productos):
     pass

producto    =   {
    "nombre"
}