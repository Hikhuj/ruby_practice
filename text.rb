#!/usr/bin/ruby

# Requires
require_relative 'Customer'

puts "Hello, Ruby!";

# Document in ruby
print <<EOF
    This is the first way of creating
    here document ie. multiple line string
EOF

# Ruby statements

puts ""
puts ">> Statement Section"

## END Statement
END {
    puts ""
    puts ">>Terminating Ruby Program"
}

# BEGIN statements
BEGIN {
    puts "Initializing Ruby Program"
}

# Commmens multiple lines

=begin
This is a comment
Another one here
=end

## Crear instancia de una clase
## Instanciacion e Inicializacion
customer_1 = Customer.new(0, "Roger", "Ulate", "roger@schoolmint.net")

# Llamada de un metodo de la clase
customer_1.hello