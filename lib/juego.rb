class Juego
	
	def initialize posicion_exito,numero_intentos
		iniciar posicion_exito,numero_intentos

		@disparos = [0,0,0,0,0,0]
		
	end

	def marcar posicion 
		@disparos[posicion.to_i] = 1
	end
	
	def leer posicion 
		return @disparos[posicion.to_i]
	end


	

	def disparar posicion
		if (@contador_intentos >= @total_intentos)
			return -1
		else
			@contador_intentos += 1
			if (posicion.to_i == @posicion_exito)	
				return true
			elsif (@contador_intentos == @total_intentos)
				return -1
			else
				return false
			end
		end
		@disparos[posicion.to_i] = 1
	end
	
	def contador_intentos 
		return @contador_intentos
	end

	def total_intentos 
		return @total_intentos
	end

	def iniciar posicion_exito,numero_intentos
		@contador_intentos = 0
		@total_intentos = numero_intentos
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
