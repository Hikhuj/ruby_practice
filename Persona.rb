#!/usb/bin/ruby

class Persona


	def initialize(id, name, last_name, phone)
			@per_id = id
			@per_name = name
			@per_last_name = last_name
			@per_phone = phone
	end

	def show_details()
			puts "Hi #@per_name #@per_last_name, como está?, su cedula #@per_id no puede ser aceptada hoy, le llamaremos al numero en su cuenta #@per_phone."
	end


end