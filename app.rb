require 'sinatra'
require_relative 'lib/juego.rb'


get '/'do
	erb :"menu"    
end


get '/unjugador' do
  #parametro, 1ro = posicion, 2do = intentos
	@@juego = Juego.new 1,2
	@@nPosiciones = 5
	@hideMsg = "hidden"
	@alerta = "default"
	erb :"juego" 
end

get '/dosjugadores' do
	@@juego_a = Juego.new 1,2
	@@juego_b = Juego.new 1,2
	"DOS JUGADORES"
end

get '/dosjugadores/disparar' do
	posicion = params["posicion"].to_i
	jugador = params["jugador"].to_i
	if (jugador=="a")
		disparo= @@juego_b.disparar(@posicion)
	end

	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i> GANASTE"
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



end

get '/unjugador/disparar' do
	
  	@posicion = params["p"].to_i
	disparo= @@juego.disparar(@posicion)
	
	if (disparo==true)
		@resultado = "<i class='glyphicon glyphicon-glass'></i> GANASTE"
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
