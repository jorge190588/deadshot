class Juego
	def initialize 
		@contador_intentos = 0
		@total_intentos = 2
	end

	def disparar posicion
		if (@contador_intentos >= @total_intentos)
			return -1
		else
			@contador_intentos += 1
			if (posicion == 1)
				return true
			elsif (@contador_intentos==@total_intentos)
				return -1
			else
				return false
			end
		end
	end
	
	def contador_intentos 
		return @contador_intentos
	end

	def total_intentos 
		return @total_intentos
	end
	
end
