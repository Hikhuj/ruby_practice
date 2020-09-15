#!/usb/bin/ruby

$edad_minima_legal = 18
MIN_DRINK_AGE = 20

class Persona

	# Variables de clase
	@@amount_of_people = 0

	def initialize(id, name, last_name, phone, age)
		@per_id = id
		@per_name = name
		@per_last_name = last_name
		@per_phone = phone
		@per_age = age
		@per_age_status
	end

	def clean_name()
		if @per_age >= 18
			@per_age = "Bienvenido a la adultez, vaya trabaje"
		else
			@per_age = "Se salvó, vaya estudia"
		end
	end

	def show_details()
		puts "Hi #@per_name #@per_last_name, como está?, su cedula #@per_id no puede ser aceptada hoy, le llamaremos al numero en su cuenta #@per_phone."
	end

	def display_name()
		puts "Nombre de persona #@per_name"
	end

	def display_min_legal_age()
		puts "Si usted es mayor a #$edad_minima_legal, puede ingresar sin problemas"
	end

	def total_no_of_people()
		@@amount_of_people += 1
		puts "Total number of people: #@@amount_of_people"
	end

	def evaluate_person_age()
		if @per_age >= 18
			puts "Mayor de edad."
		else
			if MIN_DRINK_AGE >= 20
				puts "Puede emborracharse"
			else
				puts "Es menor de edad."
			end
		end
	end

	# Este es parte de Arboles de Decisiones llamado: modifier
	# CODE if CONDITION
	def evaluate_person_age_modifier()
		$debug = 1
		print "debug\n" if $debug
	end

	## Arreglos y como pueden recorrerse
	def run_array()
		array = ["fred",10,3.14,"This is a string","last element",]
		array.each do |i|
			puts i
		end
	end

	# Hash ruby, key: value
	def run_hash()
		hsh = colors = {
						"red" => 12,
						"blue" => 13,
						"green" => 14
		}
		hsh.each do |key, value|
			print key, " is ", value, "\n"
		end
	end

	# Ranges, similar a Python
	# Intervalos
	def run_intervals()
		(10..15).each do |n|
			print n, ' '
		end
		print "\n"
	end

	def run_equal_questionMark()
		_new_legal_age = 12
		print "Edad actual para beber es igual a la nueva: \"#{$edad_minima_legal.equal?_new_legal_age}\""
	end

	# Statement: UNLESS
	# Ejecuta el CODIGO si la CONDICION es FALSA.
	def prueba_statement_unless()
		unless @per_age >= 18
			puts "UNLESS statement: La edad actual es mayor"
		else
			puts "UNLESS statement: La edad menor"
		end
	end

	# Statement: UNLESS modifier
	# CODE unless CONDITIONAL
	def test_unless_statement_modifier()
		$var = 1
		print "1 -- Value is set\n" if $var
		pritn "2 -- Value is set\n" unless $var

		$var = false
		print "3 -- Value is set\n" unless $var
	end

	# Statement: CASE
	def age_status_case_statement_test()
		age = @per_age
		when age .. 15
			puts "Puberto"
		when 16 .. 18
			puts "Casi adulto"
		when 19 .. 50
			puts "Adulto"
		else
			puts "Adulto mayor"
		end
	end

end


# Object creation
per1 = Persona.new("100","Roger","Ulate","85482428",21)
per2 = Persona.new("200","Charles","Xavier","259545",30)
per3 = Persona.new("300","A","X","4",40)

# Usar metodos
per1.show_details()
per1.display_name()
per1.display_min_legal_age()
per1.total_no_of_people()
per1.evaluate_person_age()
per1.run_array()
per1.run_hash()
per1.run_intervals()
puts ""
per1.run_equal_questionMark()
puts ""
per1.evaluate_person_age()
puts ""
per1.evaluate_person_age_modifier()
# per1.prueba_statement_unless()
per2.prueba_statement_unless()
per1.test_unless_statement_modifier()