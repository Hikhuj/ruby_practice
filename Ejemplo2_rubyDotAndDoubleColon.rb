CONST = ' out there'

class Inside_one
    CONST = proc {' in there.'}
    
    ## Funcion
    def where_is_my_CONST
        ::CONST + ' inside one'
    end
end

class Inside_two
    CONST = ' inside two'
    
    ## Funcion
    def where_is_my_CONST
        CONST
    end
end

## Accede a cada CLASS creando una nueva ejecucion de
## la clase "where_is_my_CONST"
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST

## Haciendo llamado de un Objeto::CONSTANTEGLOBAL
## y concatenamos a una Clase::CONSTANTEGlobal
puts Object::CONST + Inside_two::CONST


puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST