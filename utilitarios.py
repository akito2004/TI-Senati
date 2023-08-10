def input_imt(mensaje ,menasjes_errror)
    while   true:
        try:
            v=int(input(mensaje))
        except ValueError:
            print(mensaje_error)
                  else:
                    return v