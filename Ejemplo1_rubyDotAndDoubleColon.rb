# constante definida en el clase Objeto principal
MR_COUNT = 0

## Usando un operador con ruby DOT y DOUBLE COLON
module Foo
    MR_COUNT = 0
    # Establece la variable GLOBAL a cuenta: 1
    # Llamandola usando el DOUBLE COLON
    ::MR_COUNT = 1
    # Establece la variable LOCAL a cuenta: 2
    MR_COUNT = 2
end

# Esta es la constante GLOBAL
puts MR_COUNT
# Esta es constante local "Foo"
puts Foo::MR_COUNT