class Customer
    
    # Global Variable example
    $global_taxes = "13%"

    # Class variables or AKA Attributes
    # Must be initialized before it use
    @@id = 0
    @@first_name = ""
    @@last_name = ""
    @@email = ""

    # Initialicer or Constructor
    def initialize(id, first, last, email)
        @id = id
        @first_name = first
        @last_name = last
        @email = email
    end

    def hello
        if @id > 1
            puts "Hola #@first_name #@last_name."
        else
            puts "Un impuesto de #$global_taxes se le aplicara por cedula invalida."   
        end
    end

end

# Global variables
# $global_variable_name

# Local variables => Variables defined on a method, 
# no available outside the method
# _local_variable_name

# Intance variables ==> Available accros methods, change from object to object
# @instance_variable