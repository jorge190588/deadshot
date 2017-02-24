require 'sinatra'
require_relative 'lib/juego.rb'


get '/'do
	erb :"menu"    
end


get '/unjugador' do
	#parametro, 1ro = posicion, 2do = intentos
	#si posicion es 0, la posicion de exito es aleatoria.
	@@juego = Juego.new 1,2
	@@nPosiciones = 5
	@hideMsg = "hidden"
	@alerta = "default"
	erb :"juego" 
end

get '/dosjugadores/:jugadorinicia' do

	@jugador_inicia = params["jugadorinicia"].to_s
	if (@jugador_inicia=="a")
		@@turnoPara = "a"
	elsif (@jugador_inicia=="b")
		@@turnoPara = "b"
	else
		@@turnoPara = ""
	end


	#parametro, 1ro = posicion, 2do = intentos
	#si posicion es 0, la posicion de exito es aleatoria.
	@@juego_a = Juego.new 1,5
	@@juego_b = Juego.new 1,5
	@@nPosiciones = 5
	@hideMsg = "hidden"
	@alerta = "default"
	@posicion = 0
	erb :"dosjugadores"
end

get '/dosjugadores/disparar/:posicion/:jugador' do
	@posicion = params["posicion"].to_s
	@jugador_objetivo = params["jugador"].to_s
	@jugador_disparo = ""
	@@turnoPara = @jugador_objetivo

	
	if (@jugador_objetivo == "a")
		disparo= @@juego_a.disparar(@posicion)		
		@jugador_disparo = "b"
	elsif (@jugador_objetivo=="b")
		disparo= @@juego_b.disparar(@posicion)	
		@jugador_disparo = "a"
	end
	
	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i>GANO EL JUGADOR #{@jugador_disparo.upcase}"
		@hideJuego = "hidden"
		@hideMsg = ""
		@alerta = "success"
	elsif (disparo==false)
		@resultado="<i class='glyphicon glyphicon-warning-sign'></i>OH OH FALLASTE!!!, ES TURNO DE #{@jugador_objetivo.upcase }"
		@hideJuego = ""
		@hideMsg = ""
		@alerta = "warning"
	end


	
	erb :"dosjugadores"
end

get '/unjugador/disparar' do
	
  	@posicion = params["p"].to_i
	disparo= @@juego.disparar(@posicion)
	
	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i>GANASTE"
		@hideJuego = "hidden"
		@hideMsg = ""
		@alerta = "success"
	elsif (disparo==false)
		@resultado="<i class='glyphicon glyphicon-warning-sign'></i> INTENTA DE NUEVO"
		@hideJuego = ""
		@hideMsg = "hidden"
		@alerta = "warning"
	else
		@resultado="GAME OVER, POSICION DE EXITO #{ @@juego.posicion_exito }"
		@hideJuego = "hidden"
		@hideMsg = ""
		@alerta = "danger"
	end
	
	erb :"juego"
end
