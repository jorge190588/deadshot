class Juego
	def initialize posicion_exito
		iniciar posicion_exito
	end

	def disparar posicion
		if (@contador_intentos >= @total_intentos)
			return -1
		else
			@contador_intentos += 1
			if (posicion == @posicion_exito)
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

	def iniciar posicion_exito
		@contador_intentos = 0
		@total_intentos = 2
		if (posicion_exito==0)
			@posicion_exito = rand(1..5)
		else
			@posicion_exito = posicion_exito
		end
	end

	def posicion_exito
		return @posicion_exito
	end
	
end
