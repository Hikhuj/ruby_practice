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

# Numeros enteros y algunos ejemplos de uso
123                  # Fixnum decimal
1_234                # Fixnum decimal with underline
-500                 # Negative Fixnum
0377                 # octal
0xff                 # hexadecimal
0b1011               # binary
?a                   # character code for 'a'
?\n                  # code for a newline (0x0a)
12345678901234567890 # Bignum

# Numeros de punto flotante
123.4                # floating point value
1.0e6                # scientific notation
4E20                 # dot not required
4e+20                # sign before exponential

# Literales de cadenas de caracteres
puts 'Caracter de escape usando "\\"';
# produce: caracter de escape usando "\"

puts 'That\'s right';
# produce: That's right

# tambien se puede hacer sustitucion dentro de las cadenas
# de caracteres por medio de interpolacion de cadenas de caracteres
# o lo que se conoce como String Interpolation
puts "Multiplication valuue : #{24*60*60}";

# Notaciones con backslash
\n 	Newline (0x0a)
\r 	Carriage return (0x0d)
\f 	Formfeed (0x0c)
\b 	Backspace (0x08)
\a 	Bell (0x07)
\e 	Escape (0x1b)
\s 	Space (0x20)
\nnn 	Octal notation (n being 0-7)
\xnn 	Hexadecimal notation (n being 0-9, a-f, or A-F)
\cx, \C-x 	Control-x
\M-x 	Meta-x (c | 0x80)
\M-\C-x 	Meta-Control-x
\x 	Character x

# Operadores de comparasion adicionales a los tradicionales
<=> 	Combined comparison operator. Returns 0 if first operand equals second, 1 if first operand is greater than the second and -1 if first operand is less than the second. 	(a <=> b) returns -1.
=== 	Used to test equality within a when clause of a case statement. 	(1...10) === 5 returns true.
.eql? 	True if the receiver and argument have both the same type and equal values. 	1 == 1.0 returns true, but 1.eql?(1.0) is false.
equal? 	True if the receiver and argument have the same object id. 	if aObj is duplicate of bObj then aObj == bObj is true, a.equal?bObj is false but a.equal?aObj is true.

# Ruby Operators
and AND If both the operands are true, then the condition becomes true. 	        (a and b) is true.
or 	OR  f any of the two operands are non zero, then the condition becomes true. 	(a or b) is true.
&& 	AND If both the operands are non zero, then the condition becomes true. 	    (a && b) is true.
|| 	OR  f any of the two operands are non zero, then the condition becomes true. 	(a || b) is true.
! 	NOT Use to reverses the logical state of its operand. If a condition is true,   then Logical NOT operator will make false. 	!(a && b) is false.
not NOT Use to reverses the logical state of its operand. If a condition is true,   then Logical NOT operator will make false. 	not(a && b) is false.

# Operador ternario
?: --> If CONDITION is True ? then value X: Otherwise value Y

# Range operators
.. --> Del inicio al fin inclusive
... --> Del inicio al fin-1 (el final no es incluido)

######## Ruby operator: defined?
=begin
defined? is a special operator that takes the form of a method call to determine whether or not the passed expression is defined. It returns a description string of the expression, or nil if the expression isn't defined.

There are various usage of defined? Operator
Usage 1

defined? variable # True if variable is initialized

For Example

foo = 42
defined? foo    # => "local-variable"
defined? $_     # => "global-variable"
defined? bar    # => nil (undefined)

Usage 2

defined? method_call # True if a method is defined

For Example

defined? puts        # => "method"
defined? puts(bar)   # => nil (bar is not defined here)
defined? unpack      # => nil (not defined here)

Usage 3

# True if a method exists that can be called with super user
defined? super

For Example

defined? super     # => "super" (if it can be called)
defined? super     # => nil (if it cannot be)

Usage 4

defined? yield   # True if a code block has been passed

For Example

defined? yield    # => "yield" (if there is a block passed)
defined? yield    # => nil (if there is no block)
=end

####### Ruby "." and "::"


####### RUBY OPERATORS IMPORTANCE
Those Yes are methods, can be overriden
Method 	Operator 	            Description
Yes 	:: 	                    Constant resolution operator
Yes 	[ ] [ ]= 	            Element reference, element set
Yes 	** 	                    Exponentiation (raise to the power)
Yes 	! ~ + - 	            Not, complement, unary plus and minus (method names for the last two are +@ and -@)
Yes 	* / % 	                Multiply, divide, and modulo
Yes 	+ - 	                Addition and subtraction
Yes 	>> << 	                Right and left bitwise shift
Yes 	& 	                    Bitwise 'AND'
Yes 	^ | 	                Bitwise exclusive `OR' and regular `OR'
Yes 	<= < > >= 	            Comparison operators
Yes 	<=> == === != =~ !~ 	Equality and pattern match operators (!= and !~ may not be defined as methods)
        && 	                    Logical 'AND'
        || 	                    Logical 'OR'
        .. ... 	                Range (inclusive and exclusive)
        ? : 	                Ternary if-then-else
        = %= { /= -= += |= &= >>= <<= *= &&= ||= **= 	    Assignment
        defined? 	            Check if specified symbol defined
        not 	                Logical negation
        or and 	                Logical composition
